clear all
close all


load ObjNamingDataset

t = 25;

im = imread(['stimuli/images/' Trial(t).filename '.jpg']);
imshow(im),
hold all

for i = 1:length(Trial(t).object)
     pts = Trial(t).object(i).points;
     pts = [pts; pts(1,:)];
     plot(pts(:,1), pts(:,2), '-', 'linewidth', 3)
end