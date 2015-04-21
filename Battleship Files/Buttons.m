function Buttons(handles, hObject, k,j);
C = evalin('base','C');
if strcmp(C{k,j,2}, 'w');
    s = C{k,j,2}; % storage to see if ship is sunk
    assignin('base', 's', s)
    C{k,j,2} = 'm';
    set(hObject,'BackgroundColor', [1 1 1])
    set(hObject,'Enable','off')
else
    s = C{k,j,2}; % storage to see if ship is sunk
    assignin('base', 's', s)
    C{k,j,2} = 'h';
    set(hObject, 'BackgroundColor',[1 0 0])
    set(hObject,'Enable','off')
end
assignin('base', 'C', C)
end