function [msg,e1]=msg_extract(emimg,l)

th=emimg(246,246,1);
e1=edge_detect(emimg,th);

emred=emimg(:,:,1);

emred1=mat2cell(emred,3*ones(1,82),3*ones(1,82));

key2=key_generate();

arr=[];
for i=1:82
    for j=1:82
        if e1(i,j)>0 && key2(i,j)<=5
           c=emred1{i,j};
           arr=horzcat(arr,[c(1,2) c(2,1) c(2,2) c(2,3) c(3,2)]);
        end
    end
end

i=1;
for k=1:3:l*9
    t=[arr(i) arr(i+1) arr(i+2) arr(i+3)];
    t=dec2base(t,2,8);
    p=[t(1,8) t(2,8) t(3,8) t(4,8)];
    m(k)=mod(p(1)+p(2),2);
    m(k+1)=mod(p(3)+p(4),2);
    m(k+2)=mod(p(1)+p(3),2);
    i=i+4;
end

[a,b]=size(m);
m=transpose(reshape(m,9,b/9));
m=num2str(m);
 m=bin2dec(m);
 msg=transpose(char(m));
