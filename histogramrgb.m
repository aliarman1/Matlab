clc; clear all;
img = [0,3,4,3,4; 2,0,1,2,5; 2,7,7,6,6; 2,2,2,1,1; 1,1,1,0,1];

[r,c] = size(img);
a = [0 0 0 0 0 0 0 0];
for r = 1:5
    for c = 1:5
        %disp(img(r,c));
        for k = 1:8
            if img(r,c) == k-1
                a(k) = a(k)+ 1;
            end
        end
    end
end
disp("Frequency:");
disp(a);
sum = 0;
pdf = [0 0 0 0 0 0 0 0];
for s = 1:8
    sum = sum + a(s);
end

for s = 1:8
    pdf(s) = a(s)/sum;
end
disp("PDF");
disp(pdf);

cdf = [0 0 0 0 0 0 0 0];
cdf (1) = pdf(1);
for s = 2:8
    cdf(s) = pdf(s) + cdf(s-1);
end
disp("CDF");
disp(cdf);

L = 8;

em = [0 0 0 0 0 0 0 0];
for s = 1:8
    em(s) = cdf(s) * (L-1);
end
disp("CDF * (L-1):");
disp(em);

rn = [0 0 0 0 0 0 0 0];
for s = 1:8
    rn(s) = round(em(s));
end
disp("Round:");
disp(rn);

fcount = [0 0 0 0 0 0 0 0];
for i = 1:8
    fcount(rn(i)+1) = fcount(rn(i)+1)+ a(i);
end
disp("Mapping:");
disp(fcount);
