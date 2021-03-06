function SinkMode(handles)
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
i = evalin('base', 'i');
U = evalin('base', 'U');

%% New Point
diffx = xhit-x;
diffy = yhit-y;
if i == 3
    sv = evalin('base', 'sv');
    dir = evalin('base', 'dir');
    if sv == 0
        x = evalin('base', 'xhit');
        y = evalin('base', 'yhit');
        sv = 1;
        assignin('base', 'sv', sv)
        xsink = x;
        ysink = y;
        assignin('base', 'xsink', xsink);
        assignin('base', 'ysink', ysink);
    end
    xsink=evalin('base', 'xsink');
    ysink=evalin('base', 'ysink');
    while x==xsink && y==ysink
        right = x+1;
        up = y+1;
        left = x-1;
        down = y-1;
        switch dir
            case 1
                if x>1
                    x=left;
                else
                    i=0;
                    assignin('base', 'i', i);
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
                end
            case 2
                if y<10
                    y=up;
                else
                    i=0;
                    assignin('base', 'i', i);
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
                end
            case 3
                if x<10
                    x=right;
                else
                    i=0;
                    assignin('base', 'i', i);
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
                end
            case 4
                if y>1
                    y=down;
                else
                    i=0;
                    assignin('base', 'i', i);
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
        end
        if strcmp(U(x,y,2),'m') && strcmp(U(x,y,2), 'h')
            i=0;
            assignin('base','i',i);
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
    end
    xsink = x;
    assignin('base', 'xsink', xsink)
    ysink = y;
    assignin('base', 'ysink', ysink)
    if strcmp(U{x,y,2}, 'w')
        i = 0;
        assignin('base', 'i', i);
    end
else  % i = 2
    % direction (dir) 1=right 2=down 3=left 4=up
    if diffx == 0
        if diffy>0 % first hit > second hit
            if y>1
                y=down;
                dir=2;
            else
                i=3; % enter sink mode 2
                dir=2;
                assignin('base', 'i', i);
                assignin('base','dir',dir);
                x = evalin('base', 'xhit');
                y = evalin('base', 'yhit');
                sv = 1;
                assignin('base', 'sv', sv)
                y=y+1;
                xsink = x;
                ysink = y;
                assignin('base', 'xsink', xsink);
                assignin('base', 'ysink', ysink);
            end
        else
            if y<10
                y=up;
                dir=4;
            else
                i=3; % enter sink mode 2
                dir=4;
                assignin('base', 'i', i);
                assignin('base','dir',dir);
                x = evalin('base', 'xhit');
                y = evalin('base', 'yhit');
                sv = 1;
                assignin('base', 'sv', sv)
                y=y-1;
                xsink = x;
                ysink = y;
                assignin('base', 'xsink', xsink);
                assignin('base', 'ysink', ysink);
            end
        end
    else
        if diffx>0 % first hit > second hit
            if x>1
                x=left;
                dir=3;
            else
                i=3; % enter sink mode 2
                dir=3;
                assignin('base', 'i', i);
                assignin('base','dir',dir);
                x = evalin('base', 'xhit');
                y = evalin('base', 'yhit');
                sv = 1;
                assignin('base', 'sv', sv)
                x=x+1;
                xsink = x;
                ysink = y;
                assignin('base', 'xsink', xsink);
                assignin('base', 'ysink', ysink);
            end
        else
            if x<10
                x=right;
                dir=1;
            else
                i=3; % enter sink mode 2
                dir=1;
                assignin('base', 'i', i);
                assignin('base','dir',dir);
                x = evalin('base', 'xhit');
                y = evalin('base', 'yhit');
                sv = 1;
                assignin('base', 'sv', sv)
                x=x-1;
                xsink = x;
                ysink = y;
                assignin('base', 'xsink', xsink);
                assignin('base', 'ysink', ysink);
            end
        end
    end
    if strcmp(U{x,y,2}, 'w')
        i = 3;
        assignin('base', 'i', i);
        sv=0;
        assignin('base', 'sv', sv);
        assignin('base','dir',dir);
    end
    if strcmp(U{x,y,2}, 'm') && strcmp(U{x,y,2}, 'h')
        i = 3;
        assignin('base', 'i', i);
        x = evalin('base', 'xhit');
        y = evalin('base', 'yhit');
        sv = 1;
        assignin('base', 'sv', sv)
        xsink = x;
        ysink = y;
        assignin('base', 'xsink', xsink);
        assignin('base', 'ysink', ysink);
        while x==xsink && y==ysink
            right = x+1;
            up = y+1;
            left = x-1;
            down = y-1;
            switch dir
                case 1
                    if x>1
                        x=left;
                    else
                        i=0;
                        assignin('base', 'i', i);
                        Decision(handles);
                    end
                case 2
                    if y<10
                        y=up;
                    else
                        i=0;
                        assignin('base', 'i', i);
                        Decision(handles);
                    end
                case 3
                    if x<10
                        x=right;
                    else
                        i=0;
                        assignin('base', 'i', i);
                        Decision(handles);
                    end
                case 4
                    if y>1
                        y=down;
                    else
                        i=0;
                        assignin('base', 'i', i);
                        Decision(handles);
                    end
            end
            if strcmp(U(x,y,2),'m')
                i=0;
                assignin('base','i',i);
                x=xsink;
                y=ysink;
            end
        end
        xsink = x;
        assignin('base', 'xsink', xsink)
        ysink = y;
        assignin('base', 'ysink', ysink)
    end
end
assignin('base', 'x', x)
assignin('base', 'y', y)
end