function ComputerGuesses(handles, hObject, k,j)
%% Changes Button Color and Value
C = evalin('base','C');
if strcmp(C{k,j,2}, 'w');
    s = C{k,j,2}; % storage to see if ship is sunk
    assignin('base', 's', s)
    C{k,j,2} = 'm';
    set(hObject,'BackgroundColor', [1 1 1],'enable','off')
else
    s = C{k,j,2}; % storage to see if ship is sunk
    assignin('base', 's', s)
    C{k,j,2} = 'h';
    set(hObject, 'BackgroundColor',[1 0 0],'enable','off')
end
assignin('base', 'C', C)

%% Message if Ship is Sunk
d = 0;  % boolean value for if ship was sunk
C = evalin('base', 'C');
s = evalin('base', 's');
for f=1:2
    for g=1:2
        if strcmp(C(f,g,2), s)
            d = 1;
        end
    end
end
if d==0
    if ~strcmp(s, 'w') % so if they click the last water it doesn't tell 
                       % them they sunk something
        h = msgbox('You sunk my ship!', 'Congrats');
    end
end
assignin('base', 'C', C)
assignin('base', 's', s)
end