%PLOTS OF THE LOWPASS CHEBYSCHEV FILTER OF ORDER N AND
%0.3184 < epsilon < 0.6197
clear;
%close;

figure;
hold
N = 4;
for epsilon = 0.28:0.05:0.61
%for epsilon = 0.4:0.4;
Omega = 0:0.01:2;
H = 1./sqrt(1 + epsilon^2*cosh(N*acosh(Omega)).^2);
plot(Omega,H)
end

grid;
xlabel('\Omega')
ylabel('|H_{a,LP}(j\Omega)|')
gtext('\epsilon = 0.28')
gtext('\epsilon = 0.61')
hold off

