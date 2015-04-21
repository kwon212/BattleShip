function PlaceShips(handles);
%% Computer Places Ships
% Destroyer (D2), Cruiser (C3), Submarine (E3), Battleship (B4), Aircraft Carrier (A5)
clear
U = CreateArray;
assignin('base','U', U)
C = CreateArray;

%% Aircraft Carrier
A5direction = randi(2); % 1=right, 2=down
if A5direction==1
    A5point = C{randi(6),randi(10)};
else
    A5point = C{randi(10),randi(6)};
end

A5x=A5point(1);
A5y=A5point(2);

if A5direction==1
    while ~strcmp(C(A5x,A5y,2),'w') || ~strcmp(C(A5x+1,A5y,2),'w')...
            || ~strcmp(C(A5x+2,A5y,2),'w')|| ~strcmp(C(A5x+3,A5y,2),'w')...
            || ~strcmp(C(A5x+4,A5y,2),'w')
        A5point = C{randi(6),randi(10)};
        A5x=A5point(1);
        A5y=A5point(2);
    end
else
    while ~strcmp(C(A5x,A5y,2),'w') || ~strcmp(C(A5x,A5y+1,2),'w')...
            || ~strcmp(C(A5x,A5y+2,2),'w')|| ~strcmp(C(A5x,A5y+3,2),'w')...
            || ~strcmp(C(A5x,A5y+4,2),'w')
        A5point = C{randi(10),randi(6)};
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

%% Battleship
B4direction = randi(2); % 1=right, 2=down
if B4direction==1
    B4point = C{randi(7),randi(10)};
else
    B4point = C{randi(10),randi(7)};
end

B4x=B4point(1);
B4y=B4point(2);

if B4direction==1
    while ~strcmp(C(B4x,B4y,2),'w') || ~strcmp(C(B4x+1,B4y,2),'w')...
            || ~strcmp(C(B4x+2,B4y,2),'w')|| ~strcmp(C(B4x+3,B4y,2),'w')
        B4point = C{randi(7),randi(10)};
        B4x=B4point(1);
        B4y=B4point(2);
    end
else
    while ~strcmp(C(B4x,B4y,2),'w') || ~strcmp(C(B4x,B4y+1,2),'w')...
            || ~strcmp(C(B4x,B4y+2,2),'w')|| ~strcmp(C(B4x,B4y+3,2),'w')
        B4point = C{randi(10),randi(7)};
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

%% Cruiser
C3direction = randi(2); % 1=right, 2=down
if C3direction==1
    C3point = C{randi(8),randi(10)};
else
    C3point = C{randi(10),randi(8)};
end

C3x=C3point(1);
C3y=C3point(2);

if C3direction==1
    while ~strcmp(C(C3x,C3y,2),'w') || ~strcmp(C(C3x+1,C3y,2),'w')...
            || ~strcmp(C(C3x+2,C3y,2),'w')
        C3point = C{randi(8),randi(10)};
        C3x=C3point(1);
        C3y=C3point(2);
    end
else
    while ~strcmp(C(C3x,C3y,2),'w') || ~strcmp(C(C3x,C3y+1,2),'w')...
            || ~strcmp(C(C3x,C3y+2,2),'w')
        C3point = C{randi(10),randi(8)};
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
E3direction = randi(2); % 1=right, 2=down
if E3direction==1
    E3point = C{randi(8),randi(10)};
else
    E3point = C{randi(10),randi(8)};
end

E3x=E3point(1);
E3y=E3point(2);

if E3direction==1
    while ~strcmp(C(E3x,E3y,2),'w') || ~strcmp(C(E3x+1,E3y,2),'w')...
            || ~strcmp(C(E3x+2,E3y,2),'w')
        E3point = C{randi(8),randi(10)};
        E3x=E3point(1);
        E3y=E3point(2);
        
    end
else
    while ~strcmp(C(E3x,E3y,2),'w') || ~strcmp(C(E3x,E3y+1,2),'w')...
            || ~strcmp(C(E3x,E3y+2,2),'w')
        E3point = C{randi(10),randi(8)};
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

%% Destroyer
D2direction = randi(2); % 1=right, 2=down
if D2direction==1
    D2point = C{randi(9),randi(10)};
else
    D2point = C{randi(10),randi(9)};
end

D2x=D2point(1);
D2y=D2point(2);

if D2direction==1
    while ~strcmp(C(D2x,D2y,2),'w') || ~strcmp(C(D2x+1,D2y,2),'w')
        D2point = C{randi(9),randi(10)};
        D2x=D2point(1);
        D2y=D2point(2);
    end
else
    while ~strcmp(C(D2x,D2y,2),'w') || ~strcmp(C(D2x,D2y+1,2),'w')
        D2point = C{randi(10),randi(9)};
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

assignin('base', 'C', C)