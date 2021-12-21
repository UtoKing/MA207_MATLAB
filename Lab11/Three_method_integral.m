function int=Three_method_integral(a,b,t)
func=@(x) 1./(1+sin(x).^2);
N=[2,4,8,16,32,64];
int=zeros(6,1);
accurate_ans=integral(func,a,b);

if t==1 %右矩形法
    figure(1)
    for n=N
        clf
        x=linspace(a,b,n+1);
        y=func(x);
        int(round(log2(n)))=sum(y(2:end)*(b-a)/n);
        h1=fplot(func);
        axis([0,pi,0,1])
        hold on
        h2=bar(x(1:end-1),y(2:end),'histc');
        set(gca,'child',[h1 h2])
        pause(0.5)
        F=getframe(gcf);
        save_gif(F,'右矩形法.gif')
    end
    hold off
    figure(2)
    semilogy(log2(N),abs(int-accurate_ans))
elseif t==2 %梯形法
    figure(1)
    for n=N
        clf
        x=linspace(a,b,n+1);
        y=func(x);
        int(round(log2(n)))=sum((y(1:end-1)+y(2:end))/2 * (b-a)/n);
        h1=fplot(func);
        axis([0,pi,0,1])
        hold on
%         for i=1:n
%             h2=h2+fill([x(i) x(i) x(i+1) x(i+1)],[0 y(i) y(i+1) 0],'r');
%         end
        h2=plot(x,y);
%         fill(x,y,'g')
        hold on
        h3=stem(x,y,'.');
        set(gca,'child',[h1 h2 h3])
        pause(0.5)
        F=getframe(gcf);
        save_gif(F,'梯形法.gif')
    end
    hold off
    figure(2)
    semilogy(log2(N),abs(int-accurate_ans))
elseif t==3 %辛普森法
    figure(1)
    for n=N
        clf
        x=linspace(a,b,n+1);
        y=func(x);
        fplot(func);
        axis([0,pi,0,1])
        hold on
        for i=1:2:n
            p=polyfit([x(i) x(i+1) x(i+2)],[y(i) y(i+1) y(i+2)],2);
            y1=polyval(p,x(i):0.01:x(i+2));
            plot(x(i):0.01:x(i+2),y1,'b');
            hold on
            stem([x(i) x(i+1) x(i+2)],[y(i) y(i+1) y(i+2)],'c.')
            q=polyint(p);
            I = diff(polyval(q,[x(i) x(i+2)]));
            int(round(log2(n)))=int(round(log2(n)))+I;
        end
        pause(0.5)
        F=getframe(gcf);
        save_gif(F,'辛普森法.gif')
    end
    hold off
    figure(2)
    semilogy(log2(N),abs(int-accurate_ans))
end