function[y] = mutation(indiv)

randnum1 = rand;

if (randnum1 <= 0.01)
    for i = 1:size(indiv,2)
        randnum2 = rand;
    
        if (randnum2 <= 0.01)
            indiv(i) = round(99*rand);
        end;
    end;
end;

y = indiv;
        