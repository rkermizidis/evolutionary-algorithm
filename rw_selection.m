function[rw] = rw_selection(pop)

F = fitness(pop);

for i = 1 : size(pop,1)
    sum = 0;
    for j = 1:i
        sum = sum + F(j);
    end;
    mat(i) = sum;
end;

num = mat(1) + (mat(size(mat,2)) - mat(1)) * rand;

i=1;
while (mat(i) < num)
    i = i+1;
end;

rw = i;
