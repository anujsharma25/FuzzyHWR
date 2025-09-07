function ngh=tr_prev_list(ngh,pp1,pp2)
    x1=pp1(1,1); y1=pp1(1,2); x2=pp2(1,1); y2=pp2(1,2);
    x=[x1 x2]; y=[y1 y2];  
    theta=atand((y2-y1)/(x2-x1));
    theta=thetain360(theta,x,y); ccd=ccdirection(theta);
    [m n]=size(ngh);
    for i=1:m-1
        xi=ngh(i,1); yi=ngh(i,2);
        x=[x2 xi]; y=[y2 yi];  
        theta=atand((yi-y2)/(xi-x2));
        theta=thetain360(theta,x,y); ccdi=ccdirection(theta);
        xi2=ngh(i+1,1); yi2=ngh(i+1,2);
        x=[x2 xi2]; y=[y2 yi2];  
        theta=atand((yi2-y2)/(xi2-x2));
        theta=thetain360(theta,x,y); ccdi2=ccdirection(theta);
        t1=abs(ccd-ccdi); t2=abs(ccd-ccdi2);
        if t2<t1
            t=ngh(i+1,:); ngh(i+1,:)=ngh(i,:); ngh(i,:)=t;
        end
    end
end