function v = feature_extraction(im)
    v=[];
    im=imresize(im,[100 100]); im=im2bw(im); 
    %im=im_crop(im); %im=flipud(im);
    v=[v more_features(im)];
    %
    %tform = affine2d([1 0 0; 0.3 1 0; 0 0 1]); im=imwarp(im,tform);    
    im=flipud(im); 
    im2=im;
    %
    %%%% for thin image  
    fix_no=43; cch_length=12; path=[]; list=[]; %40 for gnn otherwise 63
    im=bwmorph(im,'thin',Inf); im=bwmorph(im,'spur',3);
    im1=regionprops(im,'PixelList','Extrema','Area'); 
    for i=1:length(im1)
        list1=im1(i).PixelList; %before YX
        P1=ceil(im1(i).Extrema(1,:)); %used before GNN exp
        P=one_ngh2(list1,P1); %find one-ngh point close to (0,0)
        x=P(1,1); y=P(1,2); path=[x y];  %before GNN
        path=tr_list(list1,x,y,path);  %traverse list
        list=[list; path];
    end
    %{
    for i=1:length(im1)
        list1=im1(i).PixelList; 
        P1=ceil(im1(i).Extrema(1,:)); %P=P1;
        P=one_ngh2(list1,P1); %find one-ngh point close to (0,0)
        x=P(1,1); y=P(1,2); path=[x y];
        path=tr_list(list1,x,y,path);  %traverse list
        list=[list; path];
    end
    %}
    [m n]=size(list);
    if m>3
        list=resample(list,fix_no,m); %to resample points    
        list=list(3:end,:); %p1=primes(fix_no); list=list(p1,:);
        %list=interparc(fix_no,list(:,1),list(:,2),'linear');
        ccpath=list_path(list,cch_length); v=[v ccpath];         
    end
    %{
    %{]
    %%%%%canny chain code
    im=im2; fix_no=133; cch_length=12; path=[]; list=[]; %133
    im=edge(im,'canny');  
    im1=regionprops(im,'PixelList','Extrema','Area'); 
    for i=1:length(im1)
        list1=im1(i).PixelList; 
        P1=ceil(im1(i).Extrema(1,:)); %P=P1;
        P=one_ngh(list1,P1); %find one-ngh point close to (0,0)
        x=P(1,1); y=P(1,2); path=[x y];
        path=tr_list(list1,x,y,path);  %traverse list
        list=[list; path];
    end
    [m n]=size(list); 
    if m>3
        list=resample(list,fix_no,m); %to resample points    
        list=list(3:end,:); list=[list;list(1,:)]; 
        ccpath=list_path(list,cch_length); v=[v ccpath];       
    end
    %
    %}
    fv_length=160;
    if length(v)<fv_length
        g1=fv_length-length(v); v=[v zeros(1,g1)];
    elseif length(v)>fv_length
        v=v(1:fv_length);
    end
    %
end
