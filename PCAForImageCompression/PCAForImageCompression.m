
%Code Disclosed | 
%This code applies Principal Component Analysis as a dimensionality 
% reduction method for image compression applications.
%--------------

clear all;
close all;

%read image
% A = imread('Durham_Castle.jpg');
A = imread('Lily.jpeg');

%define image dimensions
nx = size(A,1);
ny = size(A,2);

%show the original coloured image
figure;
imagesc(A)
axis off
axis square
title('Durham Castle')
%--------------

%convert to gray
X = double(rgb2gray(A));

%show original Grayscaled image
figure(1);
subplot(2,2,1)
imagesc(X)
axis off
axis square
colormap gray
title('Original')
%--------------

%PCA Algorithm

% STEP 2: Compute the mean of all rows
mn = mean(X,2);

% STEP 3: Build the the mean-centring dataset (Data-mean) by subtracting the
% mean mn from the datset X
X = X - mn*ones(1,ny);

% STEP 4: Construct the covariance matrix L:
L = X*X'; 

% STEP 5: Calculate the eigenvectors and the eigenvalues of the covariance
% matrix L
[V,D] = eig(L);
%--------------

%Eigenvalues Analysis

% D are the eigenvalues of the matrix L.
%extract the principal components eigenvalues, i.e.m diagonal elements of D
S = diag(D);

%sort in decreasing order
[~,m_arrange] = sort(-1*S);
S = S(m_arrange);
V = V(:,m_arrange);

%to show eigenvalues entire spectrum
figure
subplot(1,2,1)
plot(S/sum(S),'ko','LineWidth',2)
xlabel('Number of Eigenvalues, $r$','Interpreter','latex')
ylabel('Magnitude of Eigenvalues','Interpreter','latex')
grid on
axis square
xlim([-50 1550])
set(gca,'TickLabelInterpreter','latex')
set(gca,'FontSize',16)
%Cumulative Energy
subplot(1,2,2)
plot(cumsum(S)/sum(S),'ko','LineWidth',2)
xlabel('Number of Eigenvalues, $r$','Interpreter','latex')
ylabel('Cumulative Energy','Interpreter','latex')
grid on
axis square
xlim([-50 1550])
ylim([0 1.1])
set(gca,'TickLabelInterpreter','latex')
set(gca,'FontSize',16)
%--------------

%Compressed Image Reconstruction

% Get PCA ranks/scores/modes by projecting our mean_centred dataset
% on the covariance matrix eigenvectors (principal component vector space)
% Project data onto PCs.
proj = X' * V ;

%truncate SVD components: compress image
plotind = 2;
% Select few dominant PCs and ignore the rest.
for r = [5 20 100] %truncation value
    %Back project data to original basis with adding the mean back to the
    %image
    Xapprox = (V(:,1:r) * proj(:,1:r)') + mn; %approximated/reconstructed image
%     Xapprox = U(:,1:r)*S(1:r,1:r)*V(:,1:r)'; %approximated/reconstructed image
    %show the approximated/compressed image
    figure(1)
    hold on
    subplot(2,2,plotind)
    plotind = plotind + 1;
    imagesc(abs(Xapprox))
    axis off
    axis square
    title(['$r= $', num2str(r)],'Interpreter','latex');
end
%------------------------------------
