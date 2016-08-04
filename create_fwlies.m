function[fwlies] = create_fwlies()
 
    %ep = input('Να χρησιμοποιήσω τα στατικά δεδομένα;(1 or 0)');
    ep = 0;
    
    if (ep == 1)
        data = input('Δώσε το αριθμό των δεδομένων');
        fwlies = [randi([0 100],data,2),randi(999,data,1)];
    else
        if (ep == 0)
        
             fwlies = [25,65,100;
                      23,8,200;
                      7,13,327;
                      95,53,440;
                      3,3,450;
                      54,56,639;
                      67,78,650;
                      32,4,678;
                      24,76,750;
                      66,89,801;
                      84,4,945;
                      34,23,967];
        else
            fwlies = create_fwlies();
        end;
    end;