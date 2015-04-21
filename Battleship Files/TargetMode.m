function TargetMode(handles)
%% Target Mode
% Destroyer (D2), Cruiser (C3), Submarine (E3), Battleship (B4), Aircraft Carrier (A5)
% Enter target mode when i=1

%% Set Parameters
x = evalin('base', 'x');
y = evalin('base', 'y');
U = evalin('base', 'U');
q = evalin('base', 'q');
while q == 0
    xhit = x;
    assignin('base', 'xhit', xhit)
    yhit = y;
    assignin('base', 'yhit', yhit)
    q = 1;
    assignin('base', 'q', q)
end
xhit = evalin('base', 'xhit');
yhit = evalin('base', 'yhit');
x = evalin('base', 'xhit');
y = evalin('base', 'yhit');
right = xhit+1;
up = yhit+1;
left = xhit-1;
down = yhit-1;
%% Choose Point
while x==xhit && y==yhit
    xdir = randi(4);    % 1=right 2=down 3=left 4=up
    switch xdir
        case 1
            if x<10
                if ~strcmp(U(right,yhit,2),'m') && ~strcmp(U(right,yhit,2),'h')
                    x=right;
                end
            end
        case 2
            if y>1
                if ~strcmp(U(xhit,down,2),'m') && ~strcmp(U(xhit,down,2),'h')
                    y=down;
                end
            end
        case 3
            if x>1
                if ~strcmp(U(left,yhit,2),'m') && ~strcmp(U(left,yhit,2),'h')
                    x=left;
                end
            end
        case 4
            if y<10
                if ~strcmp(U(xhit,up,2),'m') && ~strcmp(U(xhit,up,2),'h')
                    y=up;
                end
            end
    end
end

i=evalin('base', 'i');
if ~strcmp(U(x,y,2), 'w')
    i=i+1;
    q = 0;
    assignin('base','q',q);
end
assignin('base', 'x', x);
assignin('base', 'y', y);
assignin('base', 'i', i);
assignin('base', 'xhit', xhit);
assignin('base', 'yhit', yhit);
end