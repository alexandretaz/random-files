function d = dpoint(p,v1,v2)
a=v1-v2;
b=p-v2;
d= norm(cross(a,b))/norm(a);
