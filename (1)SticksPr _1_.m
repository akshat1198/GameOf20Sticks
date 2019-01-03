function varargout = SticksPr(varargin)
% STICKSPR MATLAB code for SticksPr.fig
%      STICKSPR, by itself, creates a new STICKSPR or raises the existing
%      singleton*.
%
%      H = STICKSPR returns the handle to a new STICKSPR or the handle to
%      the existing singleton*.
%
%      STICKSPR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STICKSPR.M with the given input arguments.
%
%      STICKSPR('Property','Value',...) creates a new STICKSPR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SticksPr_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SticksPr_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SticksPr

% Last Modified by GUIDE v2.5 03-May-2017 15:24:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SticksPr_OpeningFcn, ...
                   'gui_OutputFcn',  @SticksPr_OutputFcn, ...
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


% --- Executes just before SticksPr is made visible.
function SticksPr_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SticksPr (see VARARGIN)

% Choose default command line output for SticksPr
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SticksPr wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = SticksPr_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
global c A
c=20;
A=0;%A will be considered our turncounter. Whenever the remainder of 
     %A divided by 2 is 0, Player 1 is displayed. If the remainder is
     %1 or more then Player 2 is displayed

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global c A
c=20; 
A=0;
set(handles.statictext1,'string','Player 1''s turn')
set(handles.pushbutton4,'string',c)
set(handles.statictext2,'string','')

function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global c A
if (c>=1)
A=A+1;
c=c-1;
set(handles.pushbutton4,'String',c)
set(handles.statictext2,'string','')
end

if (c==0) && rem(A,2)>0;
    set(handles.statictext2,'string','PLAYER 2 WINS!')
    set(handles.pushbutton4,'string','Press me')
elseif (c==0) && rem(A,2)<=0
    set(handles.statictext2,'string','PLAYER 1 WINS!')
    set(handles.pushbutton4,'string','Press me')
end

if (rem(A,2))>0;
    set(handles.statictext1,'string','Player 2''s turn')
else 
    set(handles.statictext1,'string','Player 1''s turn')
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global c A
if (c==1)
    c=c;
    A=A;
    set(handles.pushbutton4,'string',c)
    set(handles.statictext2,'string','Not enough sticks')
elseif (c>=2)
    c=c-2;
    A=A+1;
    set(handles.pushbutton4,'String',c)
    set(handles.statictext2,'string','')
end

if (c==0) && rem(A,2)>0;
    set(handles.statictext2,'string','PLAYER 2 WINS!')
    set(handles.pushbutton4,'string','Press me')
elseif (c==0) && rem(A,2)<=0
    set(handles.statictext2,'string','PLAYER 1 WINS!')
    set(handles.pushbutton4,'string','Press me')
end

if (rem(A,2))>0;
    set(handles.statictext1,'string','Player 2''s turn')
else 
    set(handles.statictext1,'string','Player 1''s turn')
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global c A
if (c<3)&& (c>0)
    c=c;
    A=A;
    set(handles.pushbutton4,'string',c)
    set(handles.statictext2,'string','Not enough sticks')
elseif (c>=3)
    c=c-3;
    A=A+1;
    set(handles.pushbutton4,'String',c)
    set(handles.statictext2,'string','')
end

if (c==0) && rem(A,2)>0;
    set(handles.statictext2,'string','PLAYER 2 WINS!')
    set(handles.pushbutton4,'string','Press me')
elseif (c==0) && rem(A,2)<=0
    set(handles.statictext2,'string','PLAYER 1 WINS!')
    set(handles.pushbutton4,'string','Press me')
end

if (rem(A,2))>0;
    set(handles.statictext1,'string','Player 2''s turn')
else 
    set(handles.statictext1,'string','Player 1''s turn')
end