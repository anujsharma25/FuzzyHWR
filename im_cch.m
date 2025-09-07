function cchpath=im_cch(ccpath, cch_length)
    [m n]=size(ccpath); cchpath=[]; gap=cch_length;
    for i=1:gap:n
        if (i+gap-1)>n
            ub=n;
        else
            ub=i+gap-1;
        end
        ccp=ccpath(:,i:ub);
        for j=1:24
            cch=sum(ccp(1,:)==j);
            cchpath=[cchpath cch];
        end
    end
    
end