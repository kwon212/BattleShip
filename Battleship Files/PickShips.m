function PickShips(handles, hObject, k, j)
U = evalin('base', 'U');
h = findobj('Style', 'radiobutton', 'Value', 1);
z=0;
D2check = 0;
C3check = 0;
E3check = 0;
B4check = 0;
A5check = 0;
row=zeros(1,5);
col=zeros(1,5);
array=1;

if h == handles.UserD2Button
    a = 'D2';
elseif h == handles.UserC3Button
    a = 'C3';
elseif h == handles.UserE3Button
    a = 'E3';
elseif h == handles.UserB4Button
    a = 'B4';
elseif h == handles.UserA5Button
    a = 'A5';
else
    a = 'w';
end
if ~strcmp (U(k,j,2), 'w')
    z=1;
end
if ~strcmp(a, 'w')
    set(hObject, 'BackgroundColor', [0 1 0])
    U{k,j,2} = a;
end

assignin('base', 'U', U);

for k=1:10
    for j=1:10
        if strcmp(U(k,j,2), 'D2')
            D2check = D2check + 1;
            if strcmp(a, 'D2')
                row(array)=k;
                col(array)=j;
                array=array+1;
            end
        end
    end
end
array=1;
for k=1:10
    for j=1:10
        if strcmp(U(k,j,2), 'C3')
            C3check = C3check + 1;
            if strcmp(a, 'C3')
                row(array)=k;
                col(array)=j;
                array=array+1;
            end
        end
    end
end
array=1;
for k=1:10
    for j=1:10
        if strcmp(U(k,j,2), 'E3')
            E3check = E3check + 1;
            if strcmp(a, 'E3')
                row(array)=k;
                col(array)=j;
                array=array+1;
            end
        end
    end
end
array=1;
for k=1:10
    for j=1:10
        if strcmp(U(k,j,2), 'B4')
            B4check = B4check + 1;
            if strcmp(a, 'B4')
                row(array)=k;
                col(array)=j;
                array=array+1;
            end
        end
    end
end
array=1;
for k=1:10
    for j=1:10
        if strcmp(U(k,j,2), 'A5')
            A5check = A5check + 1;
            if strcmp(a, 'A5')
                row(array)=k;
                col(array)=j;
                array=array+1;
            end
        end
    end
end

if D2check==2 && C3check==3 && E3check==3 && B4check==4 && A5check==5
    enable = findobj('style', 'togglebutton', 'Enable', 'Off');
    for ienable=1:length(enable)
        set(enable(ienable), 'Enable', 'On')
    end
end


if D2check>1 && strcmp(a, 'D2')
    set(handles.UserD2Button, 'Style', 'text')
    if row(1)~=row(2) && col(1)~=col(2)
        delete(Battleship)
        Battleship
        msgbox('Try Again! Please choose spaces next to each other')
    elseif row(1)==row(2) && col(1)~=col(2)
        if abs(col(1)-col(2))~=1
            delete(Battleship)
            Battleship
            msgbox('Try Again! Please choose spaces next to each other')
        end
    elseif row(1)~=row(2) && col(1)==col(2)
        if abs(row(1)-row(2))~=1
            delete(Battleship)
            Battleship
            msgbox('Try Again! Please choose spaces next to each other')
        end
    else
    end
elseif C3check>2 && strcmp(a, 'C3')
    set(handles.UserC3Button, 'Style', 'text')
    if ~all(col(1,3)==col(1))&&~all(row(1,3)==row(1))
        delete(Battleship)
        Battleship
        msgbox('Try Again! Please choose spaces next to each other')
    elseif all(col(1,3)==col(1))&& ~all(row(1,3)==row(1))
        if abs(row(1)-row(2))~=1 || abs(row(2)-row(3))~=1
            delete(Battleship)
            Battleship
            msgbox('Try Again! Please choose spaces next to each other')
        end
    elseif ~all(col(1,3)==col(1))&& all(row(1,3)==row(1))
        if abs(col(1)-col(2))~=1 || abs(col(2)-col(3))~=1
            delete(Battleship)
            Battleship
            msgbox('Try Again! Please choose spaces next to each other')
        end
    else
    end
elseif E3check>2 && strcmp(a, 'E3')
    set(handles.UserE3Button, 'Style', 'text')
    if ~all(col(1,3)==col(1))&&~all(row(1,3)==row(1))
        delete(Battleship)
        Battleship
        msgbox('Try Again! Please choose spaces next to each other')
    elseif all(col(1,3)==col(1))&& ~all(row(1,3)==row(1))
        if abs(row(1)-row(2))~=1 || abs(row(2)-row(3))~=1
            delete(Battleship)
            Battleship
            msgbox('Try Again! Please choose spaces next to each other')
        end
    elseif ~all(col(1,3)==col(1))&& all(row(1,3)==row(1))
        if abs(col(1)-col(2))~=1 || abs(col(2)-col(3))~=1
            delete(Battleship)
            Battleship
            msgbox('Try Again! Please choose spaces next to each other')
        end
    else
    end
elseif B4check>3 && strcmp(a, 'B4')
    set(handles.UserB4Button, 'Style', 'text')
    if ~all(col(1,4)==col(1))&&~all(row(1,4)==row(1))
        delete(Battleship)
        Battleship
        msgbox('Try Again! Please choose spaces next to each other')
    elseif all(col(1,4)==col(1))&&~all(row(1,4)==row(1))
        if abs(row(1)-row(2))~=1 || abs(row(2)-row(3))~=1 || abs(row(3)-row(4))~=1
            delete(Battleship)
            Battleship
            msgbox('Try Again! Please choose spaces next to each other')
        end
    elseif ~all(col(1,4)==col(1))&& all(row(1,4)==row(1))
        if abs(col(1)-col(2))~=1 || abs(col(2)-col(3))~=1 || abs(col(3)-col(4))~=1
            delete(Battleship)
            Battleship
            msgbox('Try Again! Please choose spaces next to each other')
        end
    else
    end
elseif A5check>4 && strcmp(a, 'A5')
    set(handles.UserA5Button, 'Style', 'text')
    if ~all(col(1,5)==col(1))&&~all(row(1,5)==row(1))
        delete(Battleship)
        Battleship
        msgbox('Try Again! Please choose spaces next to each other')
    elseif all(col(1,5)==col(1))&&~all(row(1,5)==row(1))
        if abs(row(1)-row(2))~=1 || abs(row(2)-row(3))~=1 || abs(row(3)-row(4))~=1 || abs(row(4)-row(5))~=1
            delete(Battleship)
            Battleship
            msgbox('Try Again! Please choose spaces next to each other')
        end
    elseif ~all(col(1,5)==col(1))&&all(row(1,5)==row(1))
        if abs(col(1)-col(2))~=1 || abs(col(2)-col(3))~=1 || abs(col(3)-col(4))~=1 || abs(col(4)-col(5))~=1
            delete(Battleship)
            Battleship
            msgbox('Try Again! Please choose spaces next to each other')
        end
    else
    end
else
end
if z==1 && ~strcmp(a, 'w')
    delete(Battleship)
    Battleship
    msgbox('Try Again! You cannot place ships on top of each other.')
end