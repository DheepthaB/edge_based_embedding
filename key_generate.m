function key2=key_generate()

key1=0;
rng(1);
r=randi(9);
rng(2);
key1(1,1)=r;
i=1;
for k=1:3
    while i<=3*k
        for j=2:9
            key1(i,j)=mod(key1(i,j-1),9)+1;
        end
        j=1;
        i=i+1;
        if i<=3*k
            key1(i,j)=key1(i-1,j+3);
        end
    end
    if i<=9
        j=1;
        key1(i,j)=key1(i-3,j)+1;
    end
end
key2=repmat(key1,9);
key2=[key2 zeros(size(key2,1),1)]; 
key2=[key2 ;zeros(1,size(key2,2))];   
