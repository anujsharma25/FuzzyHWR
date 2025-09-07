function cc_path=cc_list_path(list,cch_length)
    [m n]=size(list); ccpath=[]; cc_path=[]; num_times=1;
    if m>0
        for g=1:num_times
            x1=list(1,1); y1=list(1,2);
            for i=(g+1):g:m 
                x2=list(i,1); y2=list(i,2);
                if x1==x2 && y2>=y1
                    cc=1;
                elseif x1==x2 && y2<=y1
                    cc=5;    
                elseif x1>=x2 && y2==y1        
                    cc=3;
                elseif x2>=x1 && y2==y1
                    cc=7;
                elseif x2>x1 && y2>y1
                    cc=8;
                elseif x2<x1 && y2>y1
                    cc=2;
                elseif x2<x1 && y2<y1
                    cc=4;
                elseif x2>x1 && y2<y1
                    cc=6;
                end
                ccpath=[ccpath cc];                
                x1=x2; y1=y2;                
            end            
        end
    end
    [m n]=size(ccpath); gap=round(n/cch_length);
    for i=1:gap:n
        if (i+gap-1)>n
            ub=n;
        else
            ub=i+gap-1;
        end
        ccp=ccpath(:,i:ub);
        for j=1:8
            cch=sum(ccp(1,:)==j);
            cc_path=[cc_path cch];
        end
    end
    
end
%{
for i=1:gap:n
        if (i+gap-1)>n
            ub=n;
        else
            ub=i+gap-1;
        end
        ccp=ccpath(:,i:ub);
        for j=1:8
            cch=sum(ccp(1,:)==j);
            cc_path=[cc_path cch];
        end
    end
    
%}

    