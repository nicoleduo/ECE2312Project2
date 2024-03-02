[speech, Fs_speech] = audioread('quickBrownFox.wav');
sine_tone = sin(2*pi*5000*t(1:length(speech)));
combined_signal = speech' + sine_tone;

% Assuming 'combined_signal' is your signal that might be clipping
maxVal = max(abs(combined_signal));
% Normalize the signal
normalized_signal = combined_signal / maxVal;
audiowrite('Duong-speechchirp.wav', combined_signal, fs);

spectrogram(combined_signal, 1024, 512, 1024, fs, 'yaxis');
title('Spectrogram of Speech Chirp');