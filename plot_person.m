function[] = plot_person(x)

    y=1;
    
    for i = 1:(size(x,2)/2)
        plot(x(y++),x(y++));
        hold on;
    end;
    
    hold off;
