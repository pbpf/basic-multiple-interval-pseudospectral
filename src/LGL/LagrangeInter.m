function y= LagrangeInter(xs,ys,x)
[p,q]=size(x);
y=zeros(p,q);
n=size(xs,2);
for k=1:n
    yi=LagrangeInter_base(x,xs,k)*ys(k);
    y=y+yi;
end
end

function y= LagrangeInter_base(x,xs,i)
%% test ok
%interpolation 插值基函数
%   此处显示详细说明
% xs=行向量
n=size(xs,2);
[p,q]=size(x);
pds=ones(p,q);
pdm=1.0;
xi=xs(i);
for k=1:i-1
    xk=xs(k);
    pds=pds.*(x-xk);
    pdm=pdm*(xi-xk);
end
for k=i+1:n
    xk=xs(k);
    pds=pds.*(x-xk);
    pdm=pdm*(xi-xk);
end
y=pds./pdm;
end

