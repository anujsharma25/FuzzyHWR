function check=is_member(P,L)
    check=0;[m n]=size(L);
    for i=1:m
        if P(1,1)==L(i,1) && P(1,2)==L(i,2)
            check=1; break;
        end
    end
    
end