function[max_i] = find_best(pop)

    max_i = 1;
    max = single_fitness(pop(1,:));
    
    for (i = 1:size(pop,1))
        x = single_fitness(pop(i,:));
        
        if(x > max)
            max = x;
            max_i = i;
        end;
    end;

