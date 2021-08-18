vid = videoinput('winvideo', 1);                                            %1
i = getsnapshot(vid);                                                       %2
j = i(:,300:900,:);                                                         %3                                                                  %3
r = j(:,:,1);                                                               %5
g = j(:,:,2);                                                               %6
b = j(:,:,3);                                                               %7
x = sum(sum(r));                                                            %8  Sum of all the Red pixels present in the image
y = sum(sum(g));                                                            %9  Sum of all the Green pixels present in the image
z = sum(sum(b));                                                            %10  Sum of all the Blue pixels present in the image
ser=serial('COM10');                                                         % Defining the specified COM Port to be used
fclose(ser);
fopen(ser);                                                                 % starting serial Communication,opening serial port
pause(0.5)
%16
% m = figure
% h = actxcontrol('VLCPlayer.OCX.7', [10 10 400 300], m);                      %17
%11
if x > y && x > z
     fwrite(ser,'F');
    disp('You are holding a Red Image')                                     %12   
    %set(h, 'URL', 'D:\College Stuff\IIST Workshop\MATLAB CODES\Red.mp4');
    imshow('D:\College Stuff\IIST Workshop\MATLAB CODES\Red.png')
   
elseif y > x && y > z
    disp('You are holding a Green image')                                   %14
    %set(h, 'URL', 'D:\College Stuff\IIST Workshop\MATLAB CODES\Green.mp4');
    imshow('D:\College Stuff\IIST Workshop\MATLAB CODES\Green.png')
    fwrite(ser,'L');
elseif z > x && z > y
    disp('You are holding a Blue image')                                    %15
    %set(h, 'URL', 'D:\College Stuff\IIST Workshop\MATLAB CODES\Blue.mp4');
     imshow('D:\College Stuff\IIST Workshop\MATLAB CODES\Blue.png')
    fwrite(ser,'R');
end
fclose(ser);
