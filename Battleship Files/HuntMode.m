function HuntMode(handles)
%% Hunt Mode
U = evalin('base', 'U');
point = U{randi(10),randi(10),1};
x=point(1);
y=point(2);
while rem(abs(x-y),2)~=0 || strcmp(U{x,y,2}, 'm') || strcmp(U{x,y,2}, 'h')
    point = U{randi(10),randi(10)};
    x=point(1);
    y=point(2);
end
assignin('base', 'x', x)
assignin('base', 'y', y)
if ~strcmp(U(x, y, 2),'w')
    i = 1;
    assignin('base', 'i', i)
end
end