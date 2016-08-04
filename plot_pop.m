function[] = plot_pop(pop)

    for i = 1:size(pop,1)
        plot_person(pop(i,:));
        drawnow();
    end;