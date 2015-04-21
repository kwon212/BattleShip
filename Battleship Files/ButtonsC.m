function ButtonsC(handles)
pause(1)
U = evalin('base', 'U');
x = evalin('base', 'x');
y = evalin('base', 'y');
z = ['u', num2str(x), num2str(y), 'Toggle'];
h = findobj('Tag', z);
if strcmp(U(x,y,2), 'w')
    sc = U{x,y,2}; % storage to see if ship is sunk
    assignin('base', 'sc', sc)
    set(h, 'BackgroundColor', [1 1 1])
    U{x,y,2} = 'm';
elseif ~strcmp(U(x,y,2), 'w') && ~strcmp(U(x,y,2), 'm') && ~strcmp(U(x,y,2), 'h')
    sc = U{x,y,2}; % storage to see if ship is sunk
    assignin('base', 'sc', sc)
    set(h, 'BackgroundColor', [1 0 0])
    U{x,y,2} = 'h';
else
    Decision(handles);
end
assignin('base', 'U', U)
end