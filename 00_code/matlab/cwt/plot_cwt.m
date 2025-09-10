function plot_cwt(t, f, cfs, coi, fs, opt, N, J1);

tickmin = min(f);
tickmax = fs/2;

% figure;

%% Calculate tick lables for the representation (opt)
if contains(opt,'log2','IgnoreCase',true)
    % tickmin = fix(log2(min(f)));
    f = log2(f);
    
    numticks = ceil(log2(tickmax)-log2(tickmin)); 

    ticks = zeros(1,numticks);
    labels = strings(1, numticks);
    
    tick = 1;
    while tick ~= numticks+2
        ticks(tick) = 2^(tick+ceil(log2(tickmin))-1);
        labels(tick) = num2str(ticks(tick));
    
        tick = tick+1;
    end
    
    ticks = log2(ticks);
    
elseif contains(opt,'log10','IgnoreCase',true)
    % tickmin = fix(log10(min(f)));
    f = log10(f);    
    
    numticks = ceil(log10(tickmax)-log10(tickmin+0.0000001)); 

    ticks = zeros(1,numticks);
    labels = strings(1, numticks);
    
    tick = 1;
    while tick ~= numticks+2
        ticks(tick) = 10^(tick+fix(log10(tickmin+0.0000001))-1);
        labels(tick) = num2str(ticks(tick));
    
        tick = tick+1;
    end
    
    ticks = log10(ticks);
    
elseif contains(opt,'lin','IgnoreCase',true)
    ax = gca;
    ticks = 0;
    %labels = num2str(ticks);

else
    disp("ERROR: opt must be lin/ log2/ log10");
    return;
end

%% Print coeficients
contourf(t, f, abs(cfs), 'LineColor', 'none');

%% Adjust axis tick lables
if(any(ticks))
    yticks(ticks);
    yticklabels(labels);
end

%% Grapic properties
% colorbar
colormap(jet);
cl = colorbar;
cl.Label.String = "Magnitude";

title("Scalogram and Instantaneous Frequencies")
xlabel("Time (Seconds)");
ylabel("Frequency (Hz)");

hold on

%% Print Cone of Influence (COI)
% cone-of-influence, anything "below" is dubious
L = coi(:,1); R = coi(:,2);

plot([L(1); L]/fs,[f(1)-1 f],'--w','linewidth',1.5);    % print left side
plot([R(1); R]/fs,[f(1)-1 f],'--w','linewidth',1.5);   % print right side
hold off

% if (contains(opt,'log2','IgnoreCase',true))
%     axis([min(t) max(t) fix(log2(min(f))) fix(log2(max(f)))]);
% elseif (contains(opt,'log10','IgnoreCase',true))
%     axis([min(t) max(t) fix(log10(min(f))) fix(log10(max(f)))]);
% else 
%     axis([min(t) max(t) fix(min(f)) fix(max(f))]);
% end

%% Print the CWT Coeficients to File 
% golden_re_filename = "/home/fernandes/thesis/00_code/matlab/cwt/golden_vectors/cfs_re.txt";
% fp = fopen(golden_re_filename,'w');
% for i=1:J1
%     fprintf(fp, "%s", regexprep(num2str(real(cfs(i,:))),'\s+','\n'));
%     fprintf(fp, "\n");
% end
% fclose(fp);
% 
% golden_im_filename = "/home/fernandes/thesis/00_code/matlab/cwt/golden_vectors/cfs_im.txt";
% fp = fopen(golden_im_filename,'w');
% for i=1:J1
%     fprintf(fp, "%s", regexprep(num2str(imag(cfs(i,:))),'\s+','\n'));
%     fprintf(fp, "\n");
% end
% fclose(fp);

return
