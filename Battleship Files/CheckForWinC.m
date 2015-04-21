function CheckForWinC(handles)
U = evalin('base', 'U');
wc = 0;
for k=1:10
    for j=1:10
        if strcmp(U(k,j,2), 'D2')
            wc = 1;
        end
    end
end
for k=1:10
    for j=1:10
        if strcmp(U(k,j,2), 'C3')
            wc = 1;
        end
    end
end
for k=1:10
    for j=1:10
        if strcmp(U(k,j,2), 'E3')
            wc = 1;
        end
    end
end
for k=1:10
    for j=1:10
        if strcmp(U(k,j,2), 'B4')
            wc = 1;
        end
    end
end
for k=1:10
    for j=1:10
        if strcmp(U(k,j,2), 'A5')
            wc = 1;
        end
    end
end
if wc == 0
    disable = findobj('style', 'togglebutton');
    for idisable=1:length(disable)
        set(disable(idisable), 'Enable', 'Off')
    end
    endgame = questdlg('I win! Would you like to play again?', 'Loser!');
    switch endgame
        case 'Yes'
            delete(Battleship)
            Battleship
        case 'No'
            delete(Battleship)
        case 'Cancel'
    end
end
assignin('base', 'wc', wc)
end