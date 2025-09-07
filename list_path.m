function ccpath=list_path(list,cch_length)
    [m n]=size(list); ccpath=[]; cchpath=[]; num_times=1; %2 for non-GNN
    %jump1=floor(m/3);
    if m>0
        for g=1:num_times
            x1=list(1,1); y1=list(1,2);
            for i=(g+1):g:m   %jump1
                x2=list(i,1); y2=list(i,2);
                %j=i+jump1;
                %x2=list(j,1); y2=list(j,2);
                x=[x1 x2]; y=[y1 y2];  
                %p1 = [x1,y1; x2,y2]; d1 = pdist(p1,'euclidean');
                theta=atand((y2-y1)/(x2-x1));
                theta=thetain360(theta,x,y);
                ccd=ccdirection(theta);
                cchpath=[cchpath ccd];  
                x1=x2; y1=y2;
                %{
                x2=list(j+jump1,1); y2=list(j+jump1,2);
                x=[x1 x2]; y=[y1 y2];  
                %p1 = [x1,y1; x2,y2]; d1 = pdist(p1,'euclidean');
                theta=atand((y2-y1)/(x2-x1));
                theta=thetain360(theta,x,y);
                ccd=ccdirection(theta);
                cchpath=[cchpath ccd];  
                x1=x2; y1=y2;
                %}
            end
            %ccpath=[ccpath im_cch2(cchpath,cch_length)]; cchpath=[]; %for non GNN
            ccpath = cchpath; %for GNN only
        end
        %ccpath=im_cch(ccpath,cch_length);
    end
    
end

    