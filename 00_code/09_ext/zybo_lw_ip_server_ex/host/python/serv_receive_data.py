# import socket

# # specify the number of bytes we're requesting from the server
# # change this as desired, several values up to 50k have been tested
# # for much more, more than two bytes would need to be used to
# #  specify length
# num_bytes = 300

# # arbitrary packet size, max number of bytes we'll receive at once
# packet_size = 256

# def start_server():
#     HOST = '0.0.0.0'  # Listen on all interfaces (or use your PC's IP)
#     PORT = 5000

#     with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
#         s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
#         s.bind((HOST, PORT))
#         s.listen()
#         print(f"Server waiting for Zynq on {HOST}:{PORT}")

#         conn, addr = s.accept()
#         with conn:
#             print(f"Zynq connected from {addr}")

#             # --- SERVER REQUESTS DATA ---
#             conn.send(num_bytes.to_bytes(2, 'little'))  # Send request (2-byte little-endian)
#             print(f"Requested {num_bytes} bytes from Zynq")

#             # --- SERVER RECEIVES DATA ---
#             received = 0
#             errors = 0
#             while received < num_bytes:
#                 data = conn.recv(packet_size)  # Receive in chunks
#                 if not data:
#                     break

#                 # Validate data (optional: check if bytes follow 0x00, 0x01,... pattern)
#                 for i in range(len(data)):
#                     expected_value = (received + i) & 0xFF
#                     if data[i] != expected_value:
#                         print(f"Error, data[{i}] ({data[i]}) != {expected_value}")
#                         errors += 1

#                 received += len(data)
#                 print(f"Received {len(data)} bytes (total: {received}/{num_bytes})")

#             if errors == 0:
#                 print("All data received correctly!")
#             else:
#                 print(f"Done with {errors} errors")

# if __name__ == "__main__":
#     start_server()

import socket
import struct
import time

# Configuration
NUM_WORDS = 75  # Request 75 words (300 bytes / 4 bytes per word)
PACKET_SIZE = 65536  # Receive buffer size (must be multiple of 4)
HOST = '0.0.0.0'
PORT = 5000

def start_server():
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        s.bind((HOST, PORT))
        s.listen()
        print(f"Server waiting for Zynq on {HOST}:{PORT}")

        conn, addr = s.accept()
        with conn:
            print(f"Zynq connected from {addr}")

            # test_throughput(conn) // only use when sending initial data by the zynq
            for i in range(3):
                # 1. Request 32-bit words (4 bytes each)
                conn.send(NUM_WORDS.to_bytes(4, 'little'))  # Now sending 4-byte length
                print(f"Requested {NUM_WORDS} words ({NUM_WORDS*4} bytes) from Zynq")

                # 2. Receive and validate words
                received_words = 0
                errors = 0
                partial_data = b''  # Buffer for incomplete words
                
                while received_words < NUM_WORDS:
                    data = conn.recv(PACKET_SIZE)
                    if not data:
                        break

                    # Combine with any leftover partial word from previous recv
                    data = partial_data + data
                    partial_data = b''

                    # Process complete 32-bit words
                    word_count = len(data) // 4
                    remaining_bytes = len(data) % 4

                    # Save incomplete word for next iteration
                    if remaining_bytes:
                        partial_data = data[-remaining_bytes:]
                        data = data[:-remaining_bytes]

                    # Unpack words (little-endian)
                    words = struct.unpack(f'<{word_count}I', data)
                    
                    # Validate each word
                    for i, word in enumerate(words):
                        expected = received_words + i
                        if word != expected:
                            print(f"Error at word {received_words + i}: "
                                  f"got 0x{word:08X}, expected 0x{expected:08X}")
                            errors += 1

                    received_words += word_count
                    print(f"Received {word_count} words (total: {received_words}/{NUM_WORDS})")

                # Check for incomplete transmission
                if partial_data:
                    print(f"Warning: {len(partial_data)} trailing bytes received")

                # Final report
                if errors == 0:
                    print("All words received correctly!")
                else:
                    print(f"Done with {errors} word errors")

def test_throughput (conn):
    # Python server to test throughput
    data = conn.recv(256)  # 64KB chunk
    start = time.time()
    conn.sendall(data)  # Echo back
    elapsed = time.time() - start
    print(f"Throughput: {len(data)*8 / elapsed / 1e6:.2f} Mbps")

if __name__ == "__main__":
    start_server()


# import socket
# import threading

# HOST = '0.0.0.0'
# PORT = 5000
# BUFFER_SIZE = 65536  # 64 KB

# def handle_receive(conn):
#     total_received = 0
#     try:
#         while True:
#             data = conn.recv(BUFFER_SIZE)
#             if not data:
#                 print("Connection closed by peer.")
#                 break
#             total_received += len(data)
#             print(f"[RX] Received {len(data)} bytes (total: {total_received})")
#     except Exception as e:
#         print(f"[RX] Error: {e}")

# def handle_send(conn):
#     try:
#         while True:
#             msg = input("[TX] Enter message to send (or type 'exit' to quit): ")
#             if msg.lower() == "exit":
#                 print("Closing connection...")
#                 conn.shutdown(socket.SHUT_RDWR)
#                 conn.close()
#                 break
#             # conn.sendall(msg.encode('utf-8'))
#             conn.send(int(msg).to_bytes(4, 'little'))
#     except Exception as e:
#         print(f"[TX] Error: {e}")

# def start_server():
#     with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
#         s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
#         s.bind((HOST, PORT))
#         s.listen()
#         print(f"[Server] Waiting for Zynq to connect on {HOST}:{PORT}...")
        
#         conn, addr = s.accept()
#         print(f"[Server] Connection established with {addr}")

#         # Start RX and TX threads
#         rx_thread = threading.Thread(target=handle_receive, args=(conn,), daemon=True)
#         tx_thread = threading.Thread(target=handle_send, args=(conn,), daemon=True)

#         rx_thread.start()
#         tx_thread.start()

#         # Wait for TX to finish (e.g., user exits)
#         tx_thread.join()
#         print("[Server] Server shut down.")

# if __name__ == "__main__":
#     try:
#         start_server()
#     except KeyboardInterrupt:
#         print("\n[Server] Interrupted by user. Exiting...")