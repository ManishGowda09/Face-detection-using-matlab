the_image=imread('oppenheimer.jpg');
[width, height]=size(the_image);

if width>320
    the_image=imresize(the_image, [320 NaN]);
end

face_detector = vision.CascadeObjectDetector();
location_of_the_face=step(face_detector, the_image);
detected_image=insertShape(the_image, "rectangle",location_of_the_face);
figure;
imshow(detected_image);
title('Detected Face');