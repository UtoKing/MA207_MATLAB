clc,clear

f=[4 15 10 12.5];
A=[-0.03 -0.3 0 -0.15
    0.14 0 0 0.07];
b=[-32 42];
Aeq=[0.05 0 0.2 0.1];
beq=24;
[x,fval]=linprog(f,A,b,Aeq,beq,[0 0 0 0],[]);
disp(x)
disp(fval)