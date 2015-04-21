function HuntModeTest(handles)
%% Hunt Mode
U = evalin('base', 'U');
point = U{randi(2),randi(2)};
x=point(1);
y=point(2);
while strcmp(U{x,y,2}, 'm') || strcmp(U{x,y,2}, 'h')
    point = U{randi(2),randi(2)};
    x=point(1);
    y=point(2);
end
assignin('base', 'x', x)
assignin('base', 'y', y)
end