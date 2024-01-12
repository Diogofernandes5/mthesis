function plot_cwt(t, f, cfs, coi, fs, opt, tickmin, tickmax);

figure;

if contains(opt,'log2','IgnoreCase',true)
    f=log2(f);
    
    numticks = ceil(log2(tickmax)-log2(tickmin)); 

    ticks = zeros(1,numticks);
    labels = strings(1, numticks);
    
    tick = 1;
    while tick ~= numticks+2
        ticks(tick) = 2^(tick+log2(tickmin)-1);
        labels(tick) = num2str(ticks(tick));
    
        tick = tick+1;
    end
    
    ticks = log2(ticks);
    
elseif contains(opt,'log10','IgnoreCase',true)
    f=log10(f);    
    
    numticks = ceil(log10(tickmax)-log10(tickmin)); 

    ticks = zeros(1,numticks);
    labels = strings(1, numticks);
    
    tick = 1;
    while tick ~= numticks+2
        ticks(tick) = 10^(tick+log10(tickmin)-1);
        labels(tick) = num2str(ticks(tick));
    
        tick = tick+1;
    end
    
    ticks = log10(ticks);
    
elseif contains(opt,'lin','IgnoreCase',true)
    ax = gca;
    ticks = ax.YAxis.TickValues;

else
    disp("opt must be lin/ log2/ log10");
    return;
end

contourf(t, f, abs(cfs), 'LineColor', 'none');

if(ticks)
    yticks(ticks);
    yticklabels(labels);
end
    
% colorbar
colormap(jet);
cl = colorbar;
cl.Label.String = "Magnitude";

title("Scalogram and Instantaneous Frequencies")
xlabel("Time (Seconds)");
ylabel("Frequency (Hz)");

hold on
% cone-of-influence, anything "below" is dubious
L = coi(:,1); R = coi(:,2);

plot([L(1); L]/fs,[f(1)-1 f],'--w','linewidth',1.5);    % print left side
plot([R(1); R]/fs,[f(1)-1 f],'--w','linewidth',1.5);   % print right side
hold off

return
