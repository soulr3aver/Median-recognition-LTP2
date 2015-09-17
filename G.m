function C=G(A,B)
    if(A * B > 0)
        C = 0;
        return;
    end
    if(A * B < 0)
        C = 1;
        return;
    end
    C = -1;
    return;
end