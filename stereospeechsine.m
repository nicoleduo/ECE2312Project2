[speech, fs] = audioread('quickBrownFox.wav');

speech = speech(:);
combined_signal = combined_signal(:);

stereo_signal = [speech, combined_signal];

sound(stereo_signal, fs);

audiowrite('Duong-stereospeechsine.wav', stereo_signal, fs);

figure;
subplot(2,1,1);
spectrogram(speech, 1024, 512, 1024, fs, 'yaxis');
title('Spectrogram of Original Speech');

subplot(2,1,2);
spectrogram(combined_signal, 1024, 512, 1024, fs, 'yaxis');
title('Spectrogram of Speech with Added Sine Tone');


