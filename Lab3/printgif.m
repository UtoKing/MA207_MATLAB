function printgif(name,frames,dt)
%参数中name是gif文件的名字，frames是抓取的帧，dt为每帧间的间隔。
nframe = length(frames);
for i=1:nframe
    [image,map] = frame2im(frames(i)); %将帧转化为图像
    [im,map2]  =  rgb2ind(image,128); %将真彩色图像转换为索引图像
    
    %将图像数据写入到图像文件中， 存储在磁盘上。
    if i==1
        imwrite(im,map2,name,'GIF','WriteMode','overwrite','DelayTime',dt,'LoopCount',inf);
    else
        imwrite(im,map2,name,'WriteMode','append','DelayTime',dt); 
    end
    
end

