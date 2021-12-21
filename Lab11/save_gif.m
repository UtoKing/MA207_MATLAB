function save_gif(F,name)
    drawnow;
    I=frame2im(F);
    [I,map]=rgb2ind(I,256);
    try
        imwrite(I,map,name,'gif','WriteMode','append','DelayTime',0.5);
    catch
        imwrite(I,map,name,'gif', 'Loopcount',inf,'DelayTime',0.5);
    end
end