function Decision(handles)
i = evalin('base', 'i');

switch i
    case 0
        HuntMode(handles)
    case 1
        TargetMode(handles)
    case 2
        SinkMode(handles)
    case 3
        SinkMode(handles)
end
end