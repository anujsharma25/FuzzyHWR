function P=one_ngh(list,P1)
    ngh=[]; [m n]=size(list);
    for i=1:m
        c=0; P=list(i,:); x=P(1,1); y=P(1,2);
        x2=x+1;y2=y; P2=[x2 y2]; 
        checkp2=is_member(P2,list);
        if checkp2==1
            c=c+1; 
        end

        x2=x+1;y2=y+1; P2=[x2 y2];
        checkp2=is_member(P2,list);
        if checkp2==1
           c=c+1;
        end
        
        x2=x;y2=y+1; P2=[x2 y2];
        checkp2=is_member(P2,list);
        if checkp2==1
           c=c+1;
        end
        
        x2=x-1;y2=y+1; P2=[x2 y2];
        checkp2=is_member(P2,list);
        if checkp2==1
           c=c+1;
        end
        
        x2=x-1;y2=y; P2=[x2 y2];
        checkp2=is_member(P2,list);
        if checkp2==1
           c=c+1;
        end
        
        x2=x-1;y2=y-1; P2=[x2 y2];
        checkp2=is_member(P2,list);
        if checkp2==1
            c=c+1;
        end
        
        x2=x;y2=y-1; P2=[x2 y2];
        checkp2=is_member(P2,list);
        if checkp2==1
           c=c+1; 
        end
        
        x2=x+1;y2=y-1; P2=[x2 y2];
        checkp2=is_member(P2,list);
        if checkp2==1
           c=c+1;
        end
        
        if c==1
            ngh=[ngh; P];
        end
    end
    [m1 n1]=size(ngh);
    if m1>0
        dmin=100000; 
        for i=1:m1
            P2=[0,0;ngh(i,1),ngh(i,2)];
            d=pdist(P2,'euclidean');
            if d<dmin
                dmin=d; P=ngh(i,:);
            end
        end
    else
        P=P1;
    end
    
end