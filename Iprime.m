function IP=Iprime(I,Z,D)
    if((Z(1)<= 0 || Z(2)<= 0) || D(1)<= 0 || D(2)<= 0 || Z(1)> size(I,1)  || Z(2) > size(I,1) || D(1)> size(I,1) || D(2)> size(I,1))
        IP = 0;
        return
    end
    if (Z(1)<= 0 || Z(2)<= 0)
        IP = I(D(1),D(2));
        return
    end
    if (D(1)<= 0 || D(2)<= 0)
        IP = I(Z(1),Z(2));
        return
    end
    
    IP = I(Z(1),Z(2)) - I(D(1),D(2));
return
end