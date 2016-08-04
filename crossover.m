function[child] = crossover(indiv1,indiv2)

    n = round(rand*3);

    
    x1 = indiv1(1:n);
    x2 = indiv2(n+1:length(indiv2));
    child1 = [x1, x2];
    
    x3 = indiv1(n+1:length(indiv1));
    x4 = indiv2(1:n);
    child2 = [x4, x3];
    
    x = round(rand);
    
    if(x == 0)
        child = child1;
    else
        child = child2;
    end;
    
    %disp(child1);
    %disp(child2);