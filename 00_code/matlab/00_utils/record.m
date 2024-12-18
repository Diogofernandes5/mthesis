recObj = audiorecorder;

recDuration = 3.75;
disp("Begin speaking.")
recordblocking(recObj,recDuration);
disp("End of recording.")

play(recObj);

y = getaudiodata(recObj);

plot(y);

xlabel('Sample (n)')
ylabel('Amplitude')