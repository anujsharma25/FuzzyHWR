function ccd=ccdirection(theta)
    ccd=0;
    if theta>337.5 
        ccd=1;
    elseif theta<=22.5
        ccd=1;
    elseif theta>22.5 && theta<=67.5
        ccd=2;
    elseif theta>67.5 && theta<=112.5
        ccd=3;
    elseif theta>112.5 && theta<=157.5
        ccd=4;
    elseif theta>157.5 && theta<=202.5
        ccd=5;
    elseif theta>202.5 && theta<=247.5
        ccd=6;
    elseif theta>247.5 && theta<=292.5
        ccd=7;
    elseif theta>292.5 && theta<=337.5
        ccd=8;
    end
    
end