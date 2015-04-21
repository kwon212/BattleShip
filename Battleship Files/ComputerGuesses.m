function ComputerGuesses(handles)
disable = findobj('Style', 'togglebutton', 'Enable', 'On');
for idisable = 1:length(disable)
    set(disable(idisable), 'Enable', 'Off')
end
pause(0.05)
Decision(handles)
ButtonsC(handles)
for idisable = 1:length(disable)
    set(disable(idisable), 'Enable', 'On')
end
CheckForWinC(handles)
DialogueBoxC(handles)
end