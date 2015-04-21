function CheckForWinU(handles)
C = evalin('base', 'C');
wu = 0;
for k=1:10
    for j=1:10
        if strcmp(C(k,j,2), 'D2')
            wu = 1;
        end
    end
end
for k=1:10
    for j=1:10
        if strcmp(C(k,j,2), 'C3')
            wu = 1;
        end
    end
end
for k=1:10
    for j=1:10
        if strcmp(C(k,j,2), 'E3')
            wu = 1;
        end
    end
end
for k=1:10
    for j=1:10
        if strcmp(C(k,j,2), 'B4')
            wu = 1;
        end
    end
end
for k=1:10
    for j=1:10
        if strcmp(C(k,j,2), 'A5')
            wu = 1;
        end
    end
end
if wu == 0
    disable = findobj('style', 'togglebutton');
    for idisable=1:length(disable)
        set(disable(idisable), 'Enable', 'Off')
    end
    endgame = questdlg('You win! Would you like to play again?', 'Winner!');
    switch endgame
        case 'Yes'
            delete(Battleship)
            Battleship
        case 'No'
            delete(Battleship)
        case 'Cancel'
    end
end
assignin('base', 'wu', wu)
end