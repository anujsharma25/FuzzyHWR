function theta=thetain360(theta,x,y)
    if x(1,2)<x(1,1) && y(1,2)==y(1,1)
        theta = theta+180;
    elseif x(1,2)<x(1,1) && y(1,2)<y(1,1)
        theta = theta+180;
    elseif x(1,2)==x(1,1) && y(1,2)<y(1,1)
        theta = theta+180;
    elseif x(1,2)>x(1,1) && y(1,2)<y(1,1)
        theta = theta+360;
    elseif x(1,2)<x(1,1) && y(1,2)>y(1,1)
        theta = theta+180;
    end
    theta=abs(theta);	    	
end