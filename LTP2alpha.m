function [HN,HP]=LTP2alpha(I,direction)

Ltp2=zeros(3, 3, size(I,1)^2);  
directions={[0 ,1] , [-1 , 1] , [-1, 0], [-1 , 0]};
angles = {[0 , -1], [-1 , -1], [-1, 0], [-1, 1], [0, 1], [1, 1], [1, 0] [1, -1]};
count = 1;
    for i=1:size(I,1)
        for j=1:size(I,2)
             Ltp2(2,1,count) = G(Iprime(I,[i, j],[i + directions{direction}(1), j + directions{direction}(2)]), Iprime(I,[i + angles{1}(1), j + angles{1}(2)], [(i + angles{1}(1) + directions{direction}(1)), j + angles{1}(2) + directions{direction}(2)]));
             Ltp2(1,1,count) = G(Iprime(I,[i, j],[i + directions{direction}(1), j + directions{direction}(2)]), Iprime(I,[i + angles{2}(1), j + angles{2}(2)], [(i + angles{2}(1) + directions{direction}(1)), j + angles{2}(2) + directions{direction}(2)]));
             Ltp2(1,2,count) = G(Iprime(I,[i, j],[i + directions{direction}(1), j + directions{direction}(2)]), Iprime(I,[i + angles{3}(1), j + angles{3}(2)], [(i + angles{3}(1) + directions{direction}(1)), j + angles{3}(2) + directions{direction}(2)]));
             Ltp2(1,3,count) = G(Iprime(I,[i, j],[i + directions{direction}(1), j + directions{direction}(2)]), Iprime(I,[i + angles{4}(1), j + angles{4}(2)], [(i + angles{4}(1) + directions{direction}(1)), j + angles{4}(2) + directions{direction}(2)]));
             Ltp2(2,3,count) = G(Iprime(I,[i, j],[i + directions{direction}(1), j + directions{direction}(2)]), Iprime(I,[i + angles{5}(1), j + angles{5}(2)], [(i + angles{5}(1) + directions{direction}(1)), j + angles{5}(2) + directions{direction}(2)]));
             Ltp2(3,3,count) = G(Iprime(I,[i, j],[i + directions{direction}(1), j + directions{direction}(2)]), Iprime(I,[i + angles{6}(1), j + angles{6}(2)], [(i + angles{6}(1) + directions{direction}(1)), j + angles{6}(2) + directions{direction}(2)]));
             Ltp2(3,2,count) = G(Iprime(I,[i, j],[i + directions{direction}(1), j + directions{direction}(2)]), Iprime(I,[i + angles{7}(1), j + angles{7}(2)], [(i + angles{7}(1) + directions{direction}(1)), j + angles{7}(2) + directions{direction}(2)]));
             Ltp2(3,1,count) = G(Iprime(I,[i, j],[i + directions{direction}(1), j + directions{direction}(2)]), Iprime(I,[i + angles{8}(1), j + angles{8}(2)], [(i + angles{8}(1) + directions{direction}(1)), j + angles{8}(2) + directions{direction}(2)]));
             count = count + 1;
        end
   end
    
   Ltp2P = Ltp2;
   Ltp2N = Ltp2;
   Ltp2P(Ltp2P == -1) = 0;
   Ltp2N(Ltp2N == 1) = 0;
   Ltp2N(Ltp2N == -1) = 1;
   
   sumLtp2P = 2.^(sum(sum(Ltp2P,1),2));
   sumLtp2N = 2.^(sum(sum(Ltp2N,1),2));
   sumLtp2N = sumLtp2N(:,:);
   sumLtp2P = sumLtp2P(:,:);
   
   HP = vec2mat(sumLtp2P,size(I,1),2);
   HN = vec2mat(sumLtp2N,size(I,1),2);
return;
end