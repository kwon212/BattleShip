%% Sink Mode
% Enter sink mode when i=2

%% Set Parameters
x = evalin('base', 'x');
y = evalin('base', 'y');
right = x+1;
up = y+1;
left = x-1;
down = y-1;
xhit=evalin('base', 'xhit');
yhit=evalin('base', 'yhit');
q = 0;
assignin('base','q',q);

%% New Point
diffx = xhit-x;
diffy = yhit-y;

if diffx == 0
    if diffy>0 % first hit > second hit
        if y>1% guess y-1
            y=down;
        else
            y=yhit+1;
        end
    else
        if y<10
            y=up;
        else
            y=yhit-1;
        end
    end
else
    if diffx>0 % first hit > second hit
        if x>1% guess x-1
            x=left;
        else
            x=xhit+1;
        end
    else
        if x<10
            x=right;
        else
            x=xhit-1;
        end
    end
end

% But it needs to make one move per turn and not keep taking turns

%% Notes
% put an i=0 in opening function to initialize

%% Check for number of hits

for k=1:10
    for j=1:10
        for i=2
            if strcmp(C{k,j,i}, 'h');
                Nh=Nh+1;
            end
        end
    end
end

if Nh<17
    waitfor(handles.buttons)
end