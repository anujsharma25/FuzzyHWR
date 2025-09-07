function path=tr_list(list,x,y,path)
    [m n]=size(path); [m1 n1]=size(list); 
    if m>=m1
        return;
    end
    ngh=tr_ngh(x,y,path,list); [m1 n1]=size(path); [m2 n2]=size(ngh);
    %
    if m1>1 && m2>1
        pp2(1,1)=x; pp2(1,2)=y; pp1(1,1)=path(end-1,1); pp1(1,2)=path(end-1,2);
        ngh=tr_prev_list(ngh,pp1,pp2);
    end
    %
    [m n]=size(ngh); 
    for i=1:m
        P2=ngh(i,:);
        checkp=is_member(P2,path);
        if checkp==0
            path=[path;P2];
        end
        x=P2(1,1); y=P2(1,2);
        path=tr_list(list,x,y,path);
        
    end
    
end