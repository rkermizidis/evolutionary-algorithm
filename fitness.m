function[y] = fitness(pop)
    
    for i = 1:size(pop,1)
        y(i) = single_fitness(pop(i,:));
    end;
    
    y = y';
        
