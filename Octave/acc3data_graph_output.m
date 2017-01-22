data = load('test8.txt');

x = data(1:length(data), 1:1);
xModify = x;

y = data(1:length(data), 2:2);
yModify = y;

z = data(1:length(data), 3:3);
zModify = z;


M = 10;

for i = 1+M : length(x)-M

xModify(i) = sum(x(i-M:i+M))/(2*M+1);
end

for i = 1+M : length(y)-M

yModify(i) = sum(y(i-M:i+M))/(2*M+1);
end
	
for i = 1+M : length(z)-M

zModify(i) = sum(z(i-M:i+M))/(2*M+1);
end



plot([1:length(x)],x,'g',[1:length(xModify)],xModify,'r',[1:length(y)],y,'b',[1:length(yModify)],yModify,'r',[1:length(z)],z,'y',[1:length(zModify)],zModify,'r');