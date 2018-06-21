program test;
function znak(x,y,n,w,e: integer): integer;
   var res: integer;
begin
   znak:=(x*(E-w))-((y-w)*100*n);
end;
var input,output: text;
N,W,E ,i,j,res,count: integer;
P1:array[1..2] of integer;
P2:array[1..2] of integer;
P3:array[1..2] of integer;
P4:array[1..2] of integer;
begin
assign(input,'input.txt');
reset(input);
readln(input,N,W,E);
count:=0;
for i:=1 to n do
begin
for j:=1 to n do
begin//описание точек
P1[1]:=100*i;
P1[2]:=100*j;
P2[1]:=100*i;
P2[2]:=100*j-100;
P3[1]:=100*i-100;
P3[2]:=100*j;
P4[1]:=100*i-100;
P4[2]:=100*j-100;
if ((znak(p1[1],p1[2],n,w,e)>0) and (znak(p2[1],p2[2],n,w,e)>0) and (znak(p3[1],p3[2],n,w,e)>0) and (znak(p4[1],p4[2],n,w,e)>0)) or
((znak(p1[1],p1[2],n,w,e)<0) and (znak(p2[1],p2[2],n,w,e)<0) and (znak(p3[1],p3[2],n,w,e)<0) and (znak(p4[1],p4[2],n,w,e)<0)) then begin end
else count:=count+1;
 
end;
end;
 
writeln(count);
close(input);
end.