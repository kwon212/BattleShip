function varargout = TestTool2(varargin)
% TESTTOOL2 MATLAB code for TestTool2.fig
%      TESTTOOL2, by itself, creates a new TESTTOOL2 or raises the existing
%      singleton*.
%
%      H = TESTTOOL2 returns the handle to a new TESTTOOL2 or the handle to
%      the existing singleton*.
%
%      TESTTOOL2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESTTOOL2.M with the given input arguments.
%
%      TESTTOOL2('Property','Value',...) creates a new TESTTOOL2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TestTool2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TestTool2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TestTool2

% Last Modified by GUIDE v2.5 30-Mar-2014 22:40:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TestTool2_OpeningFcn, ...
                   'gui_OutputFcn',  @TestTool2_OutputFcn, ...
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


% --- Executes just before TestTool2 is made visible.
function TestTool2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TestTool2 (see VARARGIN)

% Choose default command line output for TestTool2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
C = CreateArrayTest;
C{1,1,2} = 'A';
C{1,2,2} = 'A';
U = CreateArrayTest;
U{1,1,2} = 'A';
U{1,2,2} = 'A';
assignin('base','C', C)
assignin('base', 'U', U)

% UIWAIT makes TestTool2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TestTool2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in c11.
function c11_Callback(hObject, eventdata, handles)
% hObject    handle to c11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ComputerGuessesTest(handles, hObject, 1,1)
HuntModeTest(handles)
ButtonsC(handles)

% --- Executes on button press in c22.
function c22_Callback(hObject, eventdata, handles)
% hObject    handle to c22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ComputerGuessesTest(handles, hObject, 2,2)
HuntModeTest(handles)
ButtonsC(handles)

% --- Executes on button press in c21.
function c21_Callback(hObject, eventdata, handles)
% hObject    handle to c21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ComputerGuessesTest(handles, hObject, 2,1)
HuntModeTest(handles)
ButtonsC(handles)

% --- Executes on button press in c12.
function c12_Callback(hObject, eventdata, handles)
% hObject    handle to c12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ComputerGuessesTest(handles, hObject, 1,2)
HuntModeTest(handles)
ButtonsC(handles)


% --- Executes on button press in u11.
function u11_Callback(hObject, eventdata, handles)
% hObject    handle to u11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in u22.
function u22_Callback(hObject, eventdata, handles)
% hObject    handle to u22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in u21.
function u21_Callback(hObject, eventdata, handles)
% hObject    handle to u21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in u12.
function u12_Callback(hObject, eventdata, handles)
% hObject    handle to u12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
