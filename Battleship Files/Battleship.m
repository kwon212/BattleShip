function varargout = Battleship(varargin)
% BATTLESHIP MATLAB code for Battleship.fig
%      BATTLESHIP, by itself, creates a new BATTLESHIP or raises the existing
%      singleton*.
%
%      H = BATTLESHIP returns the handle to a new BATTLESHIP or the handle to
%      the existing singleton*.
%
%      BATTLESHIP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BATTLESHIP.M with the given input arguments.
%
%      BATTLESHIP('Property','Value',...) creates a new BATTLESHIP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Battleship_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Battleship_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Battleship

% Last Modified by GUIDE v2.5 31-Mar-2014 00:20:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Battleship_OpeningFcn, ...
                   'gui_OutputFcn',  @Battleship_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Battleship is made visible.
function Battleship_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Battleship (see VARARGIN)

% Choose default command line output for Battleship
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

PlaceShips(handles)
i=0; % i distinguishes between hunt, target and sink mode (see Decision func)
assignin('base','i',i)
q=0; % to help save the initial hit values for target mode (see TargetMode)
assignin('base', 'q', q)
sv=0;
assignin('base', 'sv', sv);
% UIWAIT makes Battleship wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = Battleship_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
Instructions


% --- Executes on button press in c11Toggle.
function c11Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c11Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c11Toggle
UserGuesses(handles, hObject, 1, 1)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c21Toggle.
function c21Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c21Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c21Toggle
UserGuesses(handles, hObject, 2, 1)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c31Toggle.
function c31Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c31Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c31Toggle
UserGuesses(handles, hObject, 3, 1)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c41Toggle.
function c41Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c41Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c41Toggle
UserGuesses(handles, hObject, 4, 1)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c51Toggle.
function c51Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c51Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c51Toggle
UserGuesses(handles, hObject, 5, 1)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c61Toggle.
function c61Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c61Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c61Toggle
UserGuesses(handles, hObject, 6, 1)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c71Toggle.
function c71Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c71Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c71Toggle
UserGuesses(handles, hObject, 7, 1)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c81Toggle.
function c81Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c81Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c81Toggle
UserGuesses(handles, hObject, 8, 1)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c91Toggle.
function c91Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c91Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c91Toggle
UserGuesses(handles, hObject, 9, 1)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c101Toggle.
function c101Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c101Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c101Toggle
UserGuesses(handles, hObject, 10, 1)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c12Toggle.
function c12Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c12Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c12Toggle
UserGuesses(handles, hObject, 1, 2)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c22Toggle.
function c22Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c22Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c22Toggle
UserGuesses(handles, hObject, 2, 2)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c32Toggle.
function c32Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c32Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c32Toggle
UserGuesses(handles, hObject, 3, 2)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c42Toggle.
function c42Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c42Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c42Toggle
UserGuesses(handles, hObject, 4, 2)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end
% --- Executes on button press in c52Toggle.
function c52Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c52Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c52Toggle
UserGuesses(handles, hObject, 5, 2)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c62Toggle.
function c62Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c62Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c62Toggle
UserGuesses(handles, hObject, 6, 2)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c72Toggle.
function c72Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c72Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c72Toggle
UserGuesses(handles, hObject, 7, 2)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end
% --- Executes on button press in c82Toggle.
function c82Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c82Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c82Toggle
UserGuesses(handles, hObject, 8, 2)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c92Toggle.
function c92Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c92Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c92Toggle
UserGuesses(handles, hObject, 9, 2)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c102Toggle.
function c102Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c102Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c102Toggle
UserGuesses(handles, hObject, 10, 2)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c13Toggle.
function c13Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c13Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c13Toggle
UserGuesses(handles, hObject, 1, 3)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c23Toggle.
function c23Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c23Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c23Toggle
UserGuesses(handles, hObject, 2, 3)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c33Toggle.
function c33Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c33Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c33Toggle
UserGuesses(handles, hObject, 3, 3)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c43Toggle.
function c43Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c43Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c43Toggle
UserGuesses(handles, hObject, 4, 3)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c53Toggle.
function c53Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c53Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c53Toggle
UserGuesses(handles, hObject, 5, 3)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c63Toggle.
function c63Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c63Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c63Toggle
UserGuesses(handles, hObject, 6, 3)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c73Toggle.
function c73Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c73Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c73Toggle
UserGuesses(handles, hObject, 7, 3)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c83Toggle.
function c83Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c83Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c83Toggle
UserGuesses(handles, hObject, 8, 3)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c93Toggle.
function c93Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c93Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c93Toggle
UserGuesses(handles, hObject, 9, 3)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c103Toggle.
function c103Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c103Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c103Toggle
UserGuesses(handles, hObject, 10, 3)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c14Toggle.
function c14Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c14Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c14Toggle
UserGuesses(handles, hObject, 1, 4)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c24Toggle.
function c24Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c24Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c24Toggle
UserGuesses(handles, hObject, 2, 4)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c34Toggle.
function c34Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c34Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c34Toggle
UserGuesses(handles, hObject, 3, 4)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c44Toggle.
function c44Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c44Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c44Toggle
UserGuesses(handles, hObject, 4, 4)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c54Toggle.
function c54Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c54Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c54Toggle
UserGuesses(handles, hObject, 5, 4)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c64Toggle.
function c64Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c64Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c64Toggle
UserGuesses(handles, hObject, 6, 4)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c74Toggle.
function c74Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c74Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c74Toggle
UserGuesses(handles, hObject, 7, 4)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c84Toggle.
function c84Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c84Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c84Toggle
UserGuesses(handles, hObject, 8, 4)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c94Toggle.
function c94Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c94Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c94Toggle
UserGuesses(handles, hObject, 9, 4)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c104Toggle.
function c104Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c104Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c104Toggle
UserGuesses(handles, hObject, 10, 4)
wu = evalin('base', 'wu'); 
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c15Toggle.
function c15Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c15Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c15Toggle
UserGuesses(handles, hObject, 1, 5)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c25Toggle.
function c25Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c25Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c25Toggle
UserGuesses(handles, hObject, 2, 5)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c35Toggle.
function c35Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c35Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c35Toggle
UserGuesses(handles, hObject, 3, 5)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c45Toggle.
function c45Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c45Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c45Toggle
UserGuesses(handles, hObject, 4, 5)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c55Toggle.
function c55Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c55Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c55Toggle
UserGuesses(handles, hObject, 5, 5)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c65Toggle.
function c65Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c65Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c65Toggle
UserGuesses(handles, hObject, 6, 5)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c75Toggle.
function c75Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c75Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c75Toggle
UserGuesses(handles, hObject, 7, 5)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c85Toggle.
function c85Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c85Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c85Toggle
UserGuesses(handles, hObject, 8, 5)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c95Toggle.
function c95Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c95Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c95Toggle
UserGuesses(handles, hObject, 9, 5)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c105Toggle.
function c105Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c105Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c105Toggle
UserGuesses(handles, hObject, 10, 5)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c16Toggle.
function c16Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c16Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c16Toggle
UserGuesses(handles, hObject, 1, 6)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c26Toggle.
function c26Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c26Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c26Toggle
UserGuesses(handles, hObject, 2, 6)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c36Toggle.
function c36Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c36Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c36Toggle
UserGuesses(handles, hObject, 3, 6)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end
% --- Executes on button press in c46Toggle.
function c46Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c46Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c46Toggle
UserGuesses(handles, hObject, 4, 6)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c56Toggle.
function c56Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c56Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c56Toggle
UserGuesses(handles, hObject, 5, 6)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c66Toggle.
function c66Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c66Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c66Toggle
UserGuesses(handles, hObject, 6, 6)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c76Toggle.
function c76Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c76Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c76Toggle
UserGuesses(handles, hObject, 7, 6)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c86Toggle.
function c86Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c86Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c86Toggle
UserGuesses(handles, hObject, 8, 6)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c96Toggle.
function c96Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c96Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c96Toggle
UserGuesses(handles, hObject, 9, 6)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c106Toggle.
function c106Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c106Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c106Toggle
UserGuesses(handles, hObject, 10, 6)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c17Toggle.
function c17Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c17Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c17Toggle
UserGuesses(handles, hObject, 1, 7)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c27Toggle.
function c27Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c27Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c27Toggle
UserGuesses(handles, hObject, 2, 7)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c37Toggle.
function c37Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c37Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c37Toggle
UserGuesses(handles, hObject, 3, 7)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c47Toggle.
function c47Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c47Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c47Toggle
UserGuesses(handles, hObject, 4, 7)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c57Toggle.
function c57Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c57Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c57Toggle
UserGuesses(handles, hObject, 5, 7)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c67Toggle.
function c67Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c67Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c67Toggle
UserGuesses(handles, hObject, 6, 7)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c77Toggle.
function c77Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c77Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c77Toggle
UserGuesses(handles, hObject, 7, 7)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c87Toggle.
function c87Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c87Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c87Toggle
UserGuesses(handles, hObject, 8, 7)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c97Toggle.
function c97Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c97Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c97Toggle
UserGuesses(handles, hObject, 9, 7)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c107Toggle.
function c107Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c107Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c107Toggle
UserGuesses(handles, hObject, 10, 7)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c18Toggle.
function c18Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c18Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c18Toggle
UserGuesses(handles, hObject, 1, 8)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c28Toggle.
function c28Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c28Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c28Toggle
UserGuesses(handles, hObject, 2, 8)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c38Toggle.
function c38Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c38Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c38Toggle
UserGuesses(handles, hObject, 3, 8)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c48Toggle.
function c48Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c48Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c48Toggle
UserGuesses(handles, hObject, 4, 8)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c58Toggle.
function c58Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c58Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c58Toggle
UserGuesses(handles, hObject, 5, 8)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c68Toggle.
function c68Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c68Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c68Toggle
UserGuesses(handles, hObject, 6, 8)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c78Toggle.
function c78Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c78Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c78Toggle
UserGuesses(handles, hObject, 7, 8)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c88Toggle.
function c88Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c88Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c88Toggle
UserGuesses(handles, hObject, 8, 8)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c98Toggle.
function c98Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c98Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c98Toggle
UserGuesses(handles, hObject, 9, 8)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c108Toggle.
function c108Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c108Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c108Toggle
UserGuesses(handles, hObject, 10, 8)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c19Toggle.
function c19Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c19Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c19Toggle
UserGuesses(handles, hObject, 1, 9)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c29Toggle.
function c29Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c29Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c29Toggle
UserGuesses(handles, hObject, 2, 9)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end


% --- Executes on button press in c39Toggle.
function c39Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c39Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c39Toggle
UserGuesses(handles, hObject, 3, 9)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c49Toggle.
function c49Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c49Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c49Toggle
UserGuesses(handles, hObject, 4, 9)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end


% --- Executes on button press in c59Toggle.
function c59Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c59Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c59Toggle
UserGuesses(handles, hObject, 5, 9)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end


% --- Executes on button press in c69Toggle.
function c69Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c69Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c69Toggle
UserGuesses(handles, hObject, 6, 9)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end


% --- Executes on button press in c79Toggle.
function c79Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c79Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c79Toggle
UserGuesses(handles, hObject, 7, 9)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end


% --- Executes on button press in c89Toggle.
function c89Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c89Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c89Toggle
UserGuesses(handles, hObject, 8, 9)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c99Toggle.
function c99Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c99Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c99Toggle
UserGuesses(handles, hObject, 9, 9)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end


% --- Executes on button press in c109Toggle.
function c109Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c109Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c109Toggle
UserGuesses(handles, hObject, 10, 9)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end


% --- Executes on button press in c110Toggle.
function c110Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c110Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c110Toggle
UserGuesses(handles, hObject, 1, 10)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c210Toggle.
function c210Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c210Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c210Toggle
UserGuesses(handles, hObject, 2, 10)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end
% --- Executes on button press in c310Toggle.
function c310Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c310Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c310Toggle
UserGuesses(handles, hObject, 3, 10)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c410Toggle.
function c410Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c410Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c410Toggle
UserGuesses(handles, hObject, 4, 10)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c510Toggle.
function c510Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c510Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c510Toggle
UserGuesses(handles, hObject, 5, 10)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c610Toggle.
function c610Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c610Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c610Toggle
UserGuesses(handles, hObject, 6, 10)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c710Toggle.
function c710Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c710Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c710Toggle
UserGuesses(handles, hObject, 7, 10)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c810Toggle.
function c810Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c810Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c810Toggle
UserGuesses(handles, hObject, 8, 10)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c910Toggle.
function c910Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c910Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c910Toggle
UserGuesses(handles, hObject, 9, 10)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in c1010Toggle.
function c1010Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to c1010Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of c1010Toggle
UserGuesses(handles, hObject, 10, 10)
wu = evalin('base', 'wu');
if wu == 1
    ComputerGuesses(handles)
end

% --- Executes on button press in u11Toggle.
function u11Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u11Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u11Toggle
PickShips(handles, hObject, 1, 1)

% --- Executes on button press in u21Toggle.
function u21Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u21Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u21Toggle
PickShips(handles, hObject, 2, 1)

% --- Executes on button press in u31Toggle.
function u31Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u31Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u31Toggle
PickShips(handles, hObject, 3, 1)

% --- Executes on button press in u41Toggle.
function u41Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u41Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u41Toggle
PickShips(handles, hObject, 4, 1)

% --- Executes on button press in u51Toggle.
function u51Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u51Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u51Toggle
PickShips(handles, hObject, 5, 1)

% --- Executes on button press in u61Toggle.
function u61Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u61Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u61Toggle
PickShips(handles, hObject, 6, 1)

% --- Executes on button press in u71Toggle.
function u71Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u71Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u71Toggle
PickShips(handles, hObject, 7, 1)

% --- Executes on button press in u81Toggle.
function u81Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u81Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u81Toggle
PickShips(handles, hObject, 8, 1)

% --- Executes on button press in u91Toggle.
function u91Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u91Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u91Toggle
PickShips(handles, hObject, 9, 1)

% --- Executes on button press in u101Toggle.
function u101Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u101Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u101Toggle
PickShips(handles, hObject, 10, 1)

% --- Executes on button press in u12Toggle.
function u12Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u12Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u12Toggle
PickShips(handles, hObject, 1, 2)

% --- Executes on button press in u22Toggle.
function u22Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u22Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u22Toggle
PickShips(handles, hObject, 2, 2)

% --- Executes on button press in u32Toggle.
function u32Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u32Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u32Toggle
PickShips(handles, hObject, 3, 2)

% --- Executes on button press in u42Toggle.
function u42Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u42Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u42Toggle
PickShips(handles, hObject, 4, 2)

% --- Executes on button press in u52Toggle.
function u52Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u52Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u52Toggle
PickShips(handles, hObject, 5, 2)

% --- Executes on button press in u62Toggle.
function u62Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u62Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u62Toggle
PickShips(handles, hObject, 6, 2)

% --- Executes on button press in u72Toggle.
function u72Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u72Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u72Toggle
PickShips(handles, hObject, 7, 2)

% --- Executes on button press in u82Toggle.
function u82Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u82Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u82Toggle
PickShips(handles, hObject, 8, 2)

% --- Executes on button press in u92Toggle.
function u92Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u92Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u92Toggle
PickShips(handles, hObject, 9, 2)

% --- Executes on button press in u102Toggle.
function u102Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u102Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u102Toggle
PickShips(handles, hObject, 10, 2)

% --- Executes on button press in u13Toggle.
function u13Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u13Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u13Toggle
PickShips(handles, hObject, 1, 3)

% --- Executes on button press in u23Toggle.
function u23Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u23Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u23Toggle
PickShips(handles, hObject, 2, 3)

% --- Executes on button press in u33Toggle.
function u33Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u33Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u33Toggle
PickShips(handles, hObject, 3, 3)

% --- Executes on button press in u43Toggle.
function u43Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u43Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u43Toggle
PickShips(handles, hObject, 4, 3)

% --- Executes on button press in u53Toggle.
function u53Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u53Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u53Toggle
PickShips(handles, hObject, 5, 3)

% --- Executes on button press in u63Toggle.
function u63Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u63Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u63Toggle
PickShips(handles, hObject, 6, 3)

% --- Executes on button press in u73Toggle.
function u73Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u73Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u73Toggle
PickShips(handles, hObject, 7, 3)

% --- Executes on button press in u83Toggle.
function u83Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u83Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u83Toggle
PickShips(handles, hObject, 8, 3)

% --- Executes on button press in u93Toggle.
function u93Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u93Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u93Toggle
PickShips(handles, hObject, 9, 3)

% --- Executes on button press in u103Toggle.
function u103Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u103Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u103Toggle
PickShips(handles, hObject, 10, 3)

% --- Executes on button press in u14Toggle.
function u14Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u14Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u14Toggle
PickShips(handles, hObject, 1, 4)

% --- Executes on button press in u24Toggle.
function u24Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u24Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u24Toggle
PickShips(handles, hObject, 2, 4)

% --- Executes on button press in u34Toggle.
function u34Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u34Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u34Toggle
PickShips(handles, hObject, 3, 4)

% --- Executes on button press in u44Toggle.
function u44Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u44Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u44Toggle
PickShips(handles, hObject, 4, 4)

% --- Executes on button press in u54Toggle.
function u54Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u54Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u54Toggle
PickShips(handles, hObject, 5, 4)

% --- Executes on button press in u64Toggle.
function u64Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u64Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u64Toggle
PickShips(handles, hObject, 6, 4)

% --- Executes on button press in u74Toggle.
function u74Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u74Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u74Toggle
PickShips(handles, hObject, 7, 4)

% --- Executes on button press in u84Toggle.
function u84Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u84Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u84Toggle
PickShips(handles, hObject, 8, 4)

% --- Executes on button press in u94Toggle.
function u94Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u94Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u94Toggle
PickShips(handles, hObject, 9, 4)

% --- Executes on button press in u104Toggle.
function u104Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u104Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u104Toggle
PickShips(handles, hObject, 10, 4)

% --- Executes on button press in u15Toggle.
function u15Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u15Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u15Toggle
PickShips(handles, hObject, 1, 5)

% --- Executes on button press in u25Toggle.
function u25Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u25Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u25Toggle
PickShips(handles, hObject, 2, 5)

% --- Executes on button press in u35Toggle.
function u35Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u35Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u35Toggle
PickShips(handles, hObject, 3, 5)

% --- Executes on button press in u45Toggle.
function u45Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u45Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u45Toggle
PickShips(handles, hObject, 4, 5)

% --- Executes on button press in u55Toggle.
function u55Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u55Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u55Toggle
PickShips(handles, hObject, 5, 5)

% --- Executes on button press in u65Toggle.
function u65Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u65Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u65Toggle
PickShips(handles, hObject, 6, 5)

% --- Executes on button press in u75Toggle.
function u75Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u75Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u75Toggle
PickShips(handles, hObject, 7, 5)

% --- Executes on button press in u85Toggle.
function u85Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u85Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u85Toggle
PickShips(handles, hObject, 8, 5)

% --- Executes on button press in u95Toggle.
function u95Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u95Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u95Toggle
PickShips(handles, hObject, 9, 5)

% --- Executes on button press in u105Toggle.
function u105Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u105Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u105Toggle
PickShips(handles, hObject, 10, 5)

% --- Executes on button press in u16Toggle.
function u16Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u16Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u16Toggle
PickShips(handles, hObject, 1, 6)

% --- Executes on button press in u26Toggle.
function u26Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u26Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u26Toggle
PickShips(handles, hObject, 2, 6)

% --- Executes on button press in u36Toggle.
function u36Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u36Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u36Toggle
PickShips(handles, hObject, 3, 6)

% --- Executes on button press in u46Toggle.
function u46Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u46Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u46Toggle
PickShips(handles, hObject, 4, 6)

% --- Executes on button press in u56Toggle.
function u56Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u56Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u56Toggle
PickShips(handles, hObject, 5, 6)

% --- Executes on button press in u66Toggle.
function u66Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u66Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u66Toggle
PickShips(handles, hObject, 6, 6)

% --- Executes on button press in u76Toggle.
function u76Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u76Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u76Toggle
PickShips(handles, hObject, 7, 6)

% --- Executes on button press in u86Toggle.
function u86Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u86Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u86Toggle
PickShips(handles, hObject, 8, 6)

% --- Executes on button press in u96Toggle.
function u96Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u96Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u96Toggle
PickShips(handles, hObject, 9, 6)

% --- Executes on button press in u106Toggle.
function u106Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u106Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u106Toggle
PickShips(handles, hObject, 10, 6)

% --- Executes on button press in u17Toggle.
function u17Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u17Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u17Toggle
PickShips(handles, hObject, 1, 7)

% --- Executes on button press in u27Toggle.
function u27Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u27Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u27Toggle
PickShips(handles, hObject, 2, 7)

% --- Executes on button press in u37Toggle.
function u37Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u37Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u37Toggle
PickShips(handles, hObject, 3, 7)

% --- Executes on button press in u47Toggle.
function u47Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u47Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u47Toggle
PickShips(handles, hObject, 4, 7)

% --- Executes on button press in u57Toggle.
function u57Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u57Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u57Toggle
PickShips(handles, hObject, 5, 7)

% --- Executes on button press in u67Toggle.
function u67Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u67Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u67Toggle
PickShips(handles, hObject, 6, 7)

% --- Executes on button press in u77Toggle.
function u77Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u77Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u77Toggle
PickShips(handles, hObject, 7, 7)

% --- Executes on button press in u87Toggle.
function u87Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u87Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u87Toggle
PickShips(handles, hObject, 8, 7)

% --- Executes on button press in u97Toggle.
function u97Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u97Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u97Toggle
PickShips(handles, hObject, 9, 7)

% --- Executes on button press in u107Toggle.
function u107Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u107Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u107Toggle
PickShips(handles, hObject, 10, 7)

% --- Executes on button press in u18Toggle.
function u18Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u18Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u18Toggle
PickShips(handles, hObject, 1, 8)

% --- Executes on button press in u28Toggle.
function u28Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u28Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u28Toggle
PickShips(handles, hObject, 2, 8)

% --- Executes on button press in u38Toggle.
function u38Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u38Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u38Toggle
PickShips(handles, hObject, 3, 8)

% --- Executes on button press in u48Toggle.
function u48Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u48Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u48Toggle
PickShips(handles, hObject, 4, 8)

% --- Executes on button press in u58Toggle.
function u58Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u58Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u58Toggle
PickShips(handles, hObject, 5, 8)

% --- Executes on button press in u68Toggle.
function u68Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u68Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u68Toggle
PickShips(handles, hObject, 6, 8)

% --- Executes on button press in u78Toggle.
function u78Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u78Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u78Toggle
PickShips(handles, hObject, 7, 8)

% --- Executes on button press in u88Toggle.
function u88Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u88Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u88Toggle
PickShips(handles, hObject, 8, 8)

% --- Executes on button press in u98Toggle.
function u98Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u98Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u98Toggle
PickShips(handles, hObject, 9, 8)

% --- Executes on button press in u108Toggle.
function u108Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u108Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u108Toggle
PickShips(handles, hObject, 10, 8)

% --- Executes on button press in u19Toggle.
function u19Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u19Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u19Toggle
PickShips(handles, hObject, 1, 9)

% --- Executes on button press in u29Toggle.
function u29Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u29Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u29Toggle
PickShips(handles, hObject, 2, 9)

% --- Executes on button press in u39Toggle.
function u39Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u39Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u39Toggle
PickShips(handles, hObject, 3, 9)

% --- Executes on button press in u49Toggle.
function u49Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u49Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u49Toggle
PickShips(handles, hObject, 4, 9)

% --- Executes on button press in u59Toggle.
function u59Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u59Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u59Toggle
PickShips(handles, hObject, 5, 9)

% --- Executes on button press in u69Toggle.
function u69Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u69Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u69Toggle
PickShips(handles, hObject, 6, 9)

% --- Executes on button press in u79Toggle.
function u79Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u79Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u79Toggle
PickShips(handles, hObject, 7, 9)

% --- Executes on button press in u89Toggle.
function u89Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u89Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u89Toggle
PickShips(handles, hObject, 8, 9)

% --- Executes on button press in u99Toggle.
function u99Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u99Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u99Toggle
PickShips(handles, hObject, 9, 9)

% --- Executes on button press in u109Toggle.
function u109Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u109Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u109Toggle
PickShips(handles, hObject, 10, 9)

% --- Executes on button press in u110Toggle.
function u110Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u110Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u110Toggle
PickShips(handles, hObject, 1, 10)

% --- Executes on button press in u210Toggle.
function u210Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u210Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u210Toggle
PickShips(handles, hObject, 2, 10)

% --- Executes on button press in u310Toggle.
function u310Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u310Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u310Toggle
PickShips(handles, hObject, 3, 10)

% --- Executes on button press in u410Toggle.
function u410Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u410Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u410Toggle
PickShips(handles, hObject, 4, 10)

% --- Executes on button press in u510Toggle.
function u510Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u510Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u510Toggle
PickShips(handles, hObject, 5, 10)

% --- Executes on button press in u610Toggle.
function u610Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u610Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u610Toggle
PickShips(handles, hObject, 6, 10)

% --- Executes on button press in u710Toggle.
function u710Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u710Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u710Toggle
PickShips(handles, hObject, 7, 10)

% --- Executes on button press in u810Toggle.
function u810Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u810Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u810Toggle
PickShips(handles, hObject, 8, 10)

% --- Executes on button press in u910Toggle.
function u910Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u910Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u910Toggle
PickShips(handles, hObject, 9, 10)

% --- Executes on button press in u1010Toggle.
function u1010Toggle_Callback(hObject, eventdata, handles)
% hObject    handle to u1010Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of u1010Toggle
PickShips(handles, hObject, 10, 10)

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over u11Toggle.
function u11Toggle_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to u11Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over c11Toggle.
function c11Toggle_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to c11Toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject,'BackgroundColor',[0 0 1], 'enable', 'on');
