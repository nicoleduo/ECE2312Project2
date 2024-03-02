notes = [466, 1044, 830, 415, 622]; % Frequencies for the pattern
pattern = [];
for i = 1:length(notes)
    y_note = sin(2*pi*notes(i)*t(1:fs/4));
    pattern = [pattern y_note];
end
audiowrite('Duong-closeEncounters.wav', pattern, fs);
spectrogram(pattern, 1024, 512, 1024, fs, 'yaxis');
title('Spectrogram of cetk');