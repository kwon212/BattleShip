%% Hunt Mode
point = P{randi(10),randi(10)};
x=point(1);
y=point(2);
while rem(abs(x-y),2)~=0 || x<0 || y<0
    point = P{randi(10),randi(10)};
    x=point(1);
    y=point(2);
end
for k=1:10
    for j=1:10
        if P{k,j} == [x,y]
            P{k,j}=[-1,-1];
        end
    end
end
disp(x);
disp(y);

%% Target Mode

%% Set Parameters
target = false;
sink = false;
xTryRight = x+1;
xTryLeft = x-1;
yTryUp = y+1;
yTryDown = y-1;
xhit = x;
yhit = y;

%% Test Right/Left

if target == true % need to define logical variable 'target'
    x = xTryRight; % for each: evaluate hit or miss
    if x<=10
        while target == true % for xTryRight
            x = xTryRight;
            % don't try left because that is the same point
        end
    end
    target = true;
    x = xhit;
    x = xTryleft;
    if x>=1
        while target == true
            x = xTryleft;
        end
    end
end
x = xhit;

%% Test Up/Down
target = true;

if target == true
    y = yTryUp;
    if y<=10
        while target == true
            y = yTryUp;
        end
    end
    target = true;
    y=yhit;
    if y>=1
        while target == true;
            y = yTryUp;
        end
    end
end
y = yhit;

if sink==true
    % return to hunt mode
end

%% Computer Places Ships
% Destroyer (D2), Cruiser (C3), Submarine (E3), Battleship (B4), Aircraft Carrier (A5)

%% Destroyer
D2point = C{randi(10),randi(10)};
D2x=D2point(1); % row
D2y=D2point(2); % column
D2direction = randi(2); % 1=right, 2=down
if D2direction==1
    while D2x==10
        D2point = C{randi(10),randi(10)};
        D2x=D2point(1);
        D2y=D2point(2);
    end
else
    while D2y==10
        D2point = C{randi(10),randi(10)};
        D2x=D2point(1);
        D2y=D2point(2);
    end
end
if D2direction==1 % 1=right, 2=down
    C{D2x,D2y,2}='D2';
    C{D2x+1,D2y,2}='D2';
else
    C{D2x,D2y,2}='D2';
    C{D2x,D2y+1,2}='D2';
end

%% Cruiser
C3point = C{randi(10),randi(10)};
C3x=C3point(1);
C3y=C3point(2);
C3direction = randi(2); % 1=right, 2=down
if C3direction==1
    while C3x>=9 || ~strcmp(C(C3x,C3y,2),'w')
        C3point = C{randi(10),randi(10)};
        C3x=C3point(1);
        C3y=C3point(2);
    end
else
    while C3y>=9 || ~strcmp(C(C3x,C3y,2),'w')
        C3point = C{randi(10),randi(10)};
        C3x=C3point(1);
        C3y=C3point(2);
    end
end
if C3direction==1 % 1=right, 2=down
    C{C3x,C3y,2}='C3';
    C{C3x+1,C3y,2}='C3';
    C{C3x+2,C3y,2}='C3';
else
    C{C3x,C3y,2}='C3';
    C{C3x,C3y+1,2}='C3';
    C{C3x,C3y+2,2}='C3';
end

%% Submarine
E3point = C{randi(10),randi(10)};
E3x=E3point(1);
E3y=E3point(2);
E3direction = randi(2); % 1=right, 2=down
if E3direction==1
    while E3x>=9 || ~strcmp(C(E3x,E3y,2),'w')
        E3point = C{randi(10),randi(10)};
        E3x=E3point(1);
        E3y=E3point(2);
    end
else
    while E3y>=9 || ~strcmp(C(E3x,E3y,2),'w')
        E3point = C{randi(10),randi(10)};
        E3x=E3point(1);
        E3y=E3point(2);
    end
end
if E3direction==1 % 1=right, 2=down
    C{E3x,E3y,2}='E3';
    C{E3x+1,E3y,2}='E3';
    C{E3x+2,E3y,2}='E3';
else
    C{E3x,E3y,2}='E3';
    C{E3x,E3y+1,2}='E3';
    C{E3x,E3y+2,2}='E3';
end

%% Battleship
B4point = C{randi(10),randi(10)};
B4x=B4point(1);
B4y=B4point(2);
B4direction = randi(2); % 1=right, 2=down
if B4direction==1
    while B4x>=8 || ~strcmp(C(B4x,B4y,2),'w')
        B4point = C{randi(10),randi(10)};
        B4x=B4point(1);
        B4y=B4point(2);
    end
else
    while B4y>=8 || ~strcmp(C(B4x,B4y,2),'w')
        B4point = C{randi(10),randi(10)};
        B4x=B4point(1);
        B4y=B4point(2);
    end
end
if B4direction==1 % 1=right, 2=down
    C{B4x,B4y,2}='B4';
    C{B4x+1,B4y,2}='B4';
    C{B4x+2,B4y,2}='B4';
    C{B4x+3,B4y,2}='B4';
else
    C{B4x,B4y,2}='B4';
    C{B4x,B4y+1,2}='B4';
    C{B4x,B4y+2,2}='B4';
    C{B4x,B4y+3,2}='B4';
end

%% Aircraft Carrier
A5point = C{randi(10),randi(10)};
A5x=A5point(1);
A5y=A5point(2);
A5direction = randi(2); % 1=right, 2=down
if A5direction==1
    while A5x>=7 || ~strcmp(C(A5x,A5y,2),'w')
        A5point = C{randi(10),randi(10)};
        A5x=A5point(1);
        A5y=A5point(2);
    end
else
    while A5y>=7 || ~strcmp(C(A5x,A5y,2),'w')
        A5point = C{randi(10),randi(10)};
        A5x=A5point(1);
        A5y=A5point(2);
    end
end
if A5direction==1 % 1=right, 2=down
    C{A5x,A5y,2}='A5';
    C{A5x+1,A5y,2}='A5';
    C{A5x+2,A5y,2}='A5';
    C{A5x+3,A5y,2}='A5';
    C{A5x+4,A5y,2}='A5';
else
    C{A5x,A5y,2}='A5';
    C{A5x,A5y+1,2}='A5';
    C{A5x,A5y+2,2}='A5';
    C{A5x,A5y+3,2}='A5';
    C{A5x,A5y+4,2}='A5';
end

