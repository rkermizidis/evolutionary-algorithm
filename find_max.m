function[max] = find_max(pop)

    max = single_fitness(pop(1,:));
    
    for (i = 1:size(pop,1))
        x = single_fitness(pop(i,:));
        
        if(x > max)
            max = x;
        end;
    end;

