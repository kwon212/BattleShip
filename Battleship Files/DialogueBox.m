function DialogueBox(handles)
wu = evalin('base', 'wu');
d = 0;  % boolean value for if ship was sunk
C = evalin('base', 'C');
s = evalin('base', 's');
for k=1:10
    for j=1:10
        if strcmp(C(k,j,2), s)
            d = 1;
        end
    end
end
if d==0
    if ~strcmp(s, 'w') % so if they click the last water it doesn't tell
            % them they sunk something
        if strcmp(s, 'A5')
            set(handles.computerA5Text, 'ForegroundColor', [1 0 0])
        elseif strcmp(s, 'B4')
            set(handles.computerB4Text, 'ForegroundColor', [1 0 0])
        elseif strcmp(s, 'C3')
            set(handles.computerC3Text, 'ForegroundColor', [1 0 0])
        elseif strcmp(s, 'E3')
            set(handles.computerE3Text, 'ForegroundColor', [1 0 0])
        else % strcmp(s, 'D2')
            set(handles.computerD2Text, 'ForegroundColor', [1 0 0])
        end
        if wu~=0
            [cdata] = imread('explosion.jpg');
            h = msgbox('You sunk my ship!', 'Congrats', 'custom', cdata);
            set(h, 'Color', 'k')
            set(findobj(h,'Type','Text'),'Color','r');
        end
    end
end
assignin('base', 'C', C)
assignin('base', 's', s)