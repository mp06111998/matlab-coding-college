[eeg, freq, tm] = rdsamp('database/S002R01.edf');

figure('Name','Grafični prikaz osnovnih siganlov');
for i = 1:size(eeg, 2) - 9
    subplot(16, 4, i);
    plot(tm, eeg(:, i));
end

[icasig , A , W] = fastica ( eeg(:, 1:56)');

figure('Name','Grafični prikaz signalov v prostoru komponent');
for i = 1:size(icasig, 1) %, 1
    subplot(16, 4, i);
    plot(tm, icasig(i, :));
end

vector = [1, 2];

for j = 3:height(A)
    if A(22, j) > 8 || A(22, j) < -8
        vector(length(vector)+1) = j;
    elseif A(23, j) > 8 || A(23, j) < -8
        vector(length(vector)+1) = j;
    elseif A(24, j) > 8 || A(24, j) < -8
        vector(length(vector)+1) = j;
    end
end

all = [1,2];
for j = 3:height(A)
    all(length(all)+1) = j;
end

pravi = setdiff(all, vector);

stolpce = A(:, pravi);
vrstice = icasig(pravi, :);
rezultat = stolpce * vrstice;

figure('Name','Grafični prikaz korigiranih signalov');
for i = 1:size(rezultat, 1)
    subplot(16, 4, i);
    plot(tm, rezultat(i, :));
end