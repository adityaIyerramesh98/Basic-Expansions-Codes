clear all
close all
clc

%no. of values of x
n = 25;
n_x = 10;
x = linspace(0,15,n_x);

%for each value of x
for j = (1:n_x)
    
    %for series approximation
    for i=(1:n)
        term(i) = x(j)^(i-1)/factorial(i-1)
    end
    approximation(j) = sum(term) 
end
%plotting the graph for x and exp(x)
figure(1)
plot(x,exp(x),'color','r')
hold on
plot(x,approximation,'*','color','b')
xlabel('x-axis')
ylabel('y-axis')
legend("Real Eqn","Approximated values")
hold off