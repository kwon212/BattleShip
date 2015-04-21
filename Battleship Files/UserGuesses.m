function UserGuesses(handles, hObject, k, j)
Buttons(handles, hObject, k, j)
CheckForWinU(handles)
DialogueBox(handles)
wu = evalin('base', 'wu');
if wu==1
    turns = str2num(get(handles.counterText, 'String'));
    turns = turns + 1;
    set(handles.counterText, 'String', num2str(turns));
end
end