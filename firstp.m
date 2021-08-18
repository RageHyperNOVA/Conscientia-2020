vid = videoinput('winvideo', 1);                                            %1
 i = getsnapshot(vid);                                                       %2
 j = i(:,300:900,:);                                                         %3 whole matrix(image) is stored in 'i'
 imshow(j);
 r = j(:,:,1);    
 disp(r);                                                                    %5
 g = j(:,:,2);                                                               %6
 b = j(:,:,3);                                                               %7
 x = sum(sum(r));                                                            %8  Sum of all the Red pixels present in the image
 y = sum(sum(g));                                                            %9  Sum of all the Green pixels present in the image
 z = sum(sum(b)); 
 imshow(g);                                                                  %10  Sum of all the Blue pixels present in the image
 ser=serial('COM3');                                                         % Defining the specified COM Port to be used
%  fopen(ser);                                                                 % starting serial Communication,opening serial port
%                                                                              %16
% m = figure
% h = actxcontrol('WMPlayer.OCX.7', [10 10 400 300], m);                      %17
% 11
% if x > y && x > z
%     disp('You are holding a Red Image')                                     %12   
%     set(h, 'URL', 'D:\Red.mp4');
%     imshow('D:\Red.png')
%     fwrite(ser,'F');
% elseif y > x && y > z
%     disp('You are holding a Green image')                                   %14
%     set(h, 'URL', 'D:\Green.mp4');
%     imshow('D:\Green.png')
%     fwrite(ser,'L');
% elseif z > x && z > y
%     disp('You are holding a Blue image')                                    %15
%     set(h, 'URL', 'D:\Blue.mp4');
%     imshow('D:\Blue.png')
%     fwrite(ser,'R');
% end

