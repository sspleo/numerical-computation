function bn = DecToBin(dc)
    %convert decimal number to binary
    
    int_dc = floor(dc);
    frac_dc = dc - int_dc;
    
    n = int_dc;
    int_bn = '';
    f = frac_dc;
    frac_bn = '';
    
    % integer part of dc to binary
    while n ~= 0
        int_bn = append(int2str(rem(n,2)), int_bn);
        n = floor(n/2);
    end

    % decimal notation mark
    if f > 0
        frac_bn = append('.', frac_bn);
    end
    
    % fractional part of dc to binary
    f_len = 0;
    while (f ~= 0 & f_len < 16)
        f_len = f_len + 1;        
        frac_bn = append(frac_bn, int2str(floor(f*2)));
        f = f * 2 - floor(f*2);
    end
    
    bn = append(int_bn, frac_bn);
end

