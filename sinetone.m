fs = 44100; % Sampling frequency
duration = 5; % Duration of the tone in seconds
t = 0:1/fs:duration-1/fs;
f = 5000; % Frequency of the sine tone
y = sin(2*pi*f*t);
audiowrite('Duong-sinetone.wav', y, fs);
spectrogram(y, 1024, 512, 1024, fs, 'yaxis');