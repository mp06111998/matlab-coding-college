[first, second] = audioread('Man_scream.wav');
window = hamming(512); %okno velikosti 512 toèk
repeat = 256; %število toèk za ponovitev okna
nfft = 2056; %velikost fft-ja
[~, F, T, P] = spectrogram(first, window, repeat, nfft, second, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor','none'); axis tight; view(0,90);
colormap(hot); %nastavi drugi barvni spekter
set(gca,'clim',[-80, -30]);
title('Man scream');
xlabel('Time (seconds)'); ylabel('Frequency (hertz)');

[first, second] = audioread('Female_scream.wav');
window = hamming(512);
repeat = 256;
nfft = 2056;
[~, F, T, P] = spectrogram(first, window, repeat, nfft, second, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor','none'); axis tight; view(0,90);
colormap(hot);
set(gca,'clim',[-80, -30]);
title('Female scream');
xlabel('Time (seconds)'); ylabel('Frequency (hertz)');

[first, second] = audioread('born_yesterday.wav');
window = hamming(512);
repeat = 256;
nfft = 2056;
[~, F, T, P] = spectrogram(first, window, repeat, nfft, second, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor','none'); axis tight; view(0,90);
colormap(hot);
set(gca,'clim',[-80, -30]);
title('Born yesterday (Female)');
xlabel('Time (seconds)'); ylabel('Frequency (hertz)');

[first, second] = audioread('danced_with_devil.wav');
window = hamming(512);
repeat = 256;
nfft = 2056;
[~, F, T, P] = spectrogram(first, window, repeat, nfft, second, 'yaxis');
figure;
surf(T, F, 10*log10(P), 'edgecolor','none'); axis tight; view(0,90);
colormap(hot);
set(gca,'clim',[-80, -30]);
title('Dance with devil (Male)');
xlabel('Time (seconds)'); ylabel('Frequency (hertz)');