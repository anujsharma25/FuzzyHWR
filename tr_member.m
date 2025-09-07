function P3 = tr_member(x,y,D,list)
    if D>8
        D=1;
    end
    switch D
        case 1
            x2=x+1;y2=y; 
        case 2
            x2=x+1;y2=y+1;
        case 3
            x2=x;y2=y+1;
        case 4
            x2=x-1;y2=y+1;
        case 5
            x2=x-1;y2=y;
        case 6
            x2=x-1;y2=y-1;
        case 7
            x2=x-1;y2=y;
        case 8
            x2=x+1;y2=y-1;
    end
    P3=[x2 y2];
    if ismember(P3,list)
        out=0; return;
    else
        D=D+1;
        P3=tr_member(x2,y2,D,list);
    end
end