function a = ex4(N)
N
rng(N);
n = N*100+100;
matrix = rand(n);
eigen = eig(matrix);
real_eig = real(eigen);
img_eig = imag(eigen);

% Create a scatter plot
%fig = figure;
scatter(real_eig,img_eig,'.');
xMin = -15;
xMax = 15;
yMin = -15;
yMax = 15;
xlim([xMin,xMax]);
ylim([yMin,yMax]);
xlabel('X');
ylabel('Y');
title('Scatter Plot eigen values');

% Optional: Save the figure as an image
fn = sprintf('eigen_%d',N);
print(fn,'-dpdf');
end