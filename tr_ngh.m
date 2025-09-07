function ngh=tr_ngh(x,y,path,list)
    x2=x+1;y2=y; P2=[x2 y2]; ngh=[];
    checkp=is_member(P2,path);%ismember(P2,path);%find(all(bsxfun(@eq,path,P2),2));
    checkp2=is_member(P2,list);%ismember(P2,list);%find(all(bsxfun(@eq,list,P2),2));
    if checkp2==1
       if checkp==0
            ngh=[ngh; P2];
       end
    end
   
    x2=x+1;y2=y+1; P2=[x2 y2];
    checkp=is_member(P2,path);
    checkp2=is_member(P2,list);
    if checkp2==1
       if checkp==0
            ngh=[ngh; P2];
        end
    end
    x2=x;y2=y+1; P2=[x2 y2];
    checkp=is_member(P2,path);
    checkp2=is_member(P2,list);
    if checkp2==1
       if checkp==0
            ngh=[ngh; P2];
        end
    end
    x2=x-1;y2=y+1; P2=[x2 y2];
    checkp=is_member(P2,path);
    checkp2=is_member(P2,list);
    if checkp2==1
       if checkp==0
            ngh=[ngh; P2];
        end
    end
    x2=x-1;y2=y; P2=[x2 y2];
    checkp=is_member(P2,path);
    checkp2=is_member(P2,list);
    if checkp2==1
       if checkp==0
            ngh=[ngh; P2];
        end
    end
    x2=x-1;y2=y-1; P2=[x2 y2];
    checkp=is_member(P2,path);
    checkp2=is_member(P2,list);
    if checkp2==1
       if checkp==0
            ngh=[ngh; P2];
        end
    end
    x2=x;y2=y-1; P2=[x2 y2];
    checkp=is_member(P2,path);
    checkp2=is_member(P2,list);
    if checkp2==1
       if checkp==0
            ngh=[ngh; P2];
        end
    end
    x2=x+1;y2=y-1; P2=[x2 y2];
    checkp=is_member(P2,path);
    checkp2=is_member(P2,list);
    if checkp2==1
       if checkp==0
            ngh=[ngh; P2];
        end
    end
   ngh=flipud(ngh);
end