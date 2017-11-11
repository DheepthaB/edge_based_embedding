function e=edge_detect(img,th)

red=img(:,:,1);
red1=mat2cell(red,3*ones(1,82),3*ones(1,82));

for i=1:82
    for j=1:82
        c=red1{i,j};
        h=abs((c(1,1)+c(1,3))-(c(3,1)+c(3,3)));
        v=abs((c(1,1)+c(3,1))-(c(1,3)+c(3,3)));
        d1=abs(c(1,1)-c(3,3));
        d2=abs(c(1,3)-c(3,1));
        arr=[h v d1 d2];
        m=max(arr);
        if(m>th)
            e(i,j)=1;
        else
            e(i,j)=0;
        end
    end
end


        
