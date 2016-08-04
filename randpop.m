function[y] = randpop(npop, genepop, start, finish)

    y = start + (finish - start) * rand(npop,genepop);
    
    y = round(y);

    
