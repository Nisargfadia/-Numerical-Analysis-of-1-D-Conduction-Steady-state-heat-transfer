clc
clear all

%geometrical parameters
L=100;     %Length of fin
N=100;     %number of nodes 
dx=L/(N-1);


T=zeros(N,1);
Tb=100; %base tempreture
k=10    %Number of iterations 


for j=1:1:k

    T(1,1)=Tb;

    for i=2:1:N-1
        T(i,1)=(T(i+1,1)+T(i-1,1))/2;
    end
    T(N,1)=T(N-1)

    plot(T);
    hold on

end