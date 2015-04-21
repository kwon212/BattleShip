function DialogueBoxC(handles)
dc = 0;  % boolean value for if ship was sunk
U = evalin('base', 'U');
sc = evalin('base', 'sc');
wc = evalin('base', 'wc');
for k=1:10
    for j=1:10
        if strcmp(U(k,j,2), sc)
            dc = 1;
        end
    end
end
if dc==0
    if ~strcmp(sc, 'w') && wc~=0 % so if they click the last water it doesn't tell 
                        % them they sunk something
        [cdata] = imread('explosion.jpg');
        h = msgbox('I sunk your ship!', ' ', 'custom', cdata);
        set(h, 'Color', 'k')
        set(findobj(h,'Type','Text'),'Color','r');
        if strcmp(sc, 'A5')
            set(handles.UserA5Button, 'ForegroundColor', [1 0 0])
        elseif strcmp(sc, 'B4')
            set(handles.UserB4Button, 'ForegroundColor', [1 0 0])
        elseif strcmp(sc, 'C3')
            set(handles.UserC3Button, 'ForegroundColor', [1 0 0])
        elseif strcmp(sc, 'E3')
            set(handles.UserE3Button, 'ForegroundColor', [1 0 0])
        elseif strcmp(sc, 'D2')
            set(handles.UserD2Button, 'ForegroundColor', [1 0 0])
        end
        i = 0;
        assignin('base', 'i', i);
    end
end
assignin('base', 'U', U)
assignin('base', 'sc', sc)
end