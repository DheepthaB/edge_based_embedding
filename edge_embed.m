function emimg=edge_embed(e,img,th,str)

arr=[];
red=img(:,:,1);
red1=mat2cell(red,3*ones(1,82),3*ones(1,82));

key2=key_generate();

sbin=dec2bin(str,9);
[r,c]=size(sbin);
sbin=reshape(transpose(sbin),1,r*c);

while nnz(e)*5<4*length(sbin)/3
    th=th-1;
    e=edge_detect(img,th);
end

for i=1:82
    for j=1:82
        if e(i,j)>0 && key2(i,j)<=5
            c=red1{i,j};
            arr=horzcat(arr,[c(1,2) c(2,1) c(2,2) c(2,3) c(3,2)]);
        end
    end
end

i=1;
for k=1:3:length(str)*9
    m=[sbin(k) sbin(k+1) sbin(k+2)];
    t=[arr(i) arr(i+1) arr(i+2) arr(i+3)];
    t=dec2base(t,2,8);
    p=[t(1,8) t(2,8) t(3,8) t(4,8)];
    k1=mod((p(1)+p(2)),2);
    k2=mod((p(3)+p(4)),2);
    k3=mod((p(1)+p(3)),2);
    if m(1)==dec2bin(k1,1) && m(2)==dec2bin(k2,1) && m(3)==dec2bin(k3,1)
        p=p;
    elseif m(1)==dec2bin(k1,1) && m(2)==dec2bin(k2,1) && m(3)~=dec2bin(k3,1)
        if p(3)=='1'
            p(3)='0';
        else
            p(3)='1';
        end
        if p(4)=='1'
            p(4)='0';
        else
            p(4)='1';
        end
    elseif  m(1)==dec2bin(k1,1) && m(2)~=dec2bin(k2,1) && m(3)==dec2bin(k3,1)
        if p(4)=='1'
            p(4)='0';
        else
            p(4)='1';
        end
    elseif  m(1)==dec2bin(k1,1) && m(2)~=dec2bin(k2,1) && m(3)~=dec2bin(k3,1)
        if p(3)=='1'
            p(3)='0';
        else
            p(3)='1';
        end
    elseif  m(1)~=dec2bin(k1,1) && m(2)==dec2bin(k2,1) && m(3)==dec2bin(k3,1)
        if p(2)=='1'
            p(2)='0';
        else
            p(2)='1';
        end
    elseif m(1)~=dec2bin(k1,1) && m(2)==dec2bin(k2,1) && m(3)~=dec2bin(k3,1)
        if p(1)=='1'
            p(1)='0';
        else
            p(1)='1';
        end
    elseif  m(1)~=dec2bin(k1,1) && m(2)~=dec2bin(k2,1) && m(3)==dec2bin(k3,1)
        if p(2)=='1'
            p(2)='0';
        else
            p(2)='1';
        end
        if p(4)=='1'
            p(4)='0';
        else
            p(4)='1';
        end
    elseif  m(1)~=dec2bin(k1,1) && m(2)~=dec2bin(k2,1) && m(3)~=dec2bin(k3,1)
        if p(1)=='1'
            p(1)='0';
        else
            p(1)='1';
        end
        if p(4)=='1'
            p(4)='0';
        else
            p(4)='1';
        end
    end
    t(1,8)=p(1);
    t(2,8)=p(2);
    t(3,8)=p(3);
    t(4,8)=p(4);
    t=bin2dec(t);
    arr(i)=t(1);
    arr(i+1)=t(2);
    arr(i+2)=t(3);
    arr(i+3)=t(4);
    i=i+4;
end

k=1;
for i=1:82
    for j=1:82
        if e(i,j)>0 && key2(i,j)<=5
            c=red1{i,j};
            c(1,2)=arr(k);
            c(2,1)=arr(k+1);
            c(2,2)=arr(k+2);
            c(2,3)=arr(k+3);
            c(3,2)=arr(k+4);
            k=k+5;
            red1{i,j}=c;
        end
    end
end


emimg=img;
red=cell2mat(red1);
emimg(:,:,1)=red;
emimg(246,246,1)=th;
