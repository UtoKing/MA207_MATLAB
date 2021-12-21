function printgif(name,frames,dt)
%������name��gif�ļ������֣�frames��ץȡ��֡��dtΪÿ֡��ļ����
nframe = length(frames);
for i=1:nframe
    [image,map] = frame2im(frames(i)); %��֡ת��Ϊͼ��
    [im,map2]  =  rgb2ind(image,128); %�����ɫͼ��ת��Ϊ����ͼ��
    
    %��ͼ������д�뵽ͼ���ļ��У� �洢�ڴ����ϡ�
    if i==1
        imwrite(im,map2,name,'GIF','WriteMode','overwrite','DelayTime',dt,'LoopCount',inf);
    else
        imwrite(im,map2,name,'WriteMode','append','DelayTime',dt); 
    end
    
end

