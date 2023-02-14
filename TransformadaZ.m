% Arthur
clear all;
clc;

num = [1 0]
den = [1 -1]
[h, w] = freqz(num, den); % Frequency response of digital filter (Z Domain)
figure(1)
plot(w, h)
grid on

w = pi*freqspace(2000);
figure(2)
[z p k] = tf2zp(num,den) % Convert transfer function filter parameters to zero-pole-gain form.
zplane(z,p);

figure(3)
freqz(num,den,w);
