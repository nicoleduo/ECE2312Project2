cutoff = 4000; % Cutoff frequency for the low-pass filter
[b, a] = butter(6, cutoff/(fs/2), 'low');
filtered_signal = filter(b, a, combined_signal);
audiowrite('Duong-filteredspeechsine.wav', filtered_signal, fs);
spectrogram(filtered_signal, 1024, 512, 1024, fs, 'yaxis');
title('Spectrogram of Filtered Speech Sine');