%dependencies: compute_shift.m, find_boundaries.m, find_error.m

close all;
clear all;

plot_flags = 1; %0 to supress plot output, if 1 will generate ~30 plots of windowed phase signal and linear fit

image_set = {'img1.png','img2.png','img3.png','img4.png','img5.png'};
error_avg_z = zeros(1,factorial(length(image_set))/(2*factorial(length(image_set)-2)));
error_avg_y = zeros(1,factorial(length(image_set))/(2*factorial(length(image_set)-2)));
counter = 1;
for j = 1:length(image_set)-1
    for k = j+1:length(image_set)
        [~,error_z,~,error_y]=compute_shift(image_set{j},image_set{k},plot_flags);
        error_avg_z(counter) = error_z;
        error_avg_y(counter) = error_y;
        counter = counter+1;
    end
end

fprintf('Average Z Error: %f\nAverage Y Error: %f\n',mean(error_avg_z),mean(error_avg_y))
