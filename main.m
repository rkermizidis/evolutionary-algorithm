function[] = main()

    npop = input('Dwste to plithos tou plithismou: ');
    
    pop = randpop(npop,6,0,99);
    
    disp(pop);
    
    generations = input('Dwste twn arithmo twn genewn: ');
    
    max_array = [];
    new_pop = [];
    

    for i = 1:generations
        disp(['Generation ',num2str(i)]);
        disp(pop);
        
        for(j = 1:(size(pop,1)-1))
            rw1 = rw_selection(pop);
            rw2 = rw_selection(pop);
            
            indiv1 = pop(rw1,:);
            indiv2 = pop(rw2,:);
        
            child = crossover(indiv1,indiv2);

            new_pop(j,:) = child;
        end;
        
        elit_child = find_best(pop);
        
        for( z = 1:size(new_pop,1))
            new_pop(z,:) = mutation(new_pop(z,:));
        end;
        
        new_pop((size(new_pop,1)+1),:) = pop(elit_child,:);
        
        max_array(i) = find_max(new_pop);
        disp(max_array(i));
        
        pop = new_pop;
    end;
    