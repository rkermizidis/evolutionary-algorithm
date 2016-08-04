function[fit] = single_fitness(indiv)
    sum = 0;
    fwlies = create_fwlies();
    x = 1;
    y = 2;

    for j = 1:3
	    for i=1:size(fwlies,1);
		    d = sqrt((indiv(x)-fwlies(i,1))^2 + (indiv(y)-fwlies(i,2))^2);

		    k(i) = (fwlies(i,3) * 141.42) / (20 * d + 0.00001);
		    k(i) = round(k(i));
		
		    if(fwlies(i,3) >= k(i))
		        fwlies(i,3) = fwlies(i,3) - k(i);
		        sum = sum + k(i);
		    else
		        fwlies(i,3) = 0;
		        sum = sum + fwlies(i,3);
		    end;
	    end;
	    
	    x = x+2; 
	    y = y+2;
	end;
	
	fit = sum/6947*100;
    
    

	