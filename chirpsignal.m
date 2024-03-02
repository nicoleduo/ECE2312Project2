t = 0:1/fs:duration-1/fs;
f0 = 0;
f1 = 8000;
y_chirp = chirp(t, f0, duration, f1, 'linear');
audiowrite('Duong-chirp.wav', y_chirp, fs);
spectrogram(y_chirp, 1024, 512, 1024, fs, 'yaxis');
title('Spectrogram of Chirp');