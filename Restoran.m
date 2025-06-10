function varargout = Restoran(varargin)
% RESTORAN MATLAB code for Restoran.fig
%      RESTORAN, by itself, creates a new RESTORAN or raises the existing
%      singleton*.
%
%      H = RESTORAN returns the handle to a new RESTORAN or the handle to
%      the existing singleton*.
%
%      RESTORAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESTORAN.M with the given input arguments.
%
%      RESTORAN('Property','Value',...) creates a new RESTORAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Restoran_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Restoran_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Restoran

% Last Modified by GUIDE v2.5 20-Jan-2022 08:34:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Restoran_OpeningFcn, ...
                   'gui_OutputFcn',  @Restoran_OutputFcn, ...
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


% --- Executes just before Restoran is made visible.
function Restoran_OpeningFcn(hObject, eventdata, handles, varargin)
axes(handles.axes1);
image(imread('spageti.jpg'));
grid off;
axis off;
axes(handles.axes2);
image(imread('ayamgoreng.jpg'));
grid off;
axis off;
axes(handles.axes3);
image(imread('fried_rice.png'));
grid off;
axis off;
axes(handles.axes4);
image(imread('milhsakes.jpg'));
grid off;
axis off;
axes(handles.axes5);
image(imread('air_mineral.jpg'));
grid off;
axis off;
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Restoran (see VARARGIN)

% Choose default command line output for Restoran
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Restoran wait for user response (see UIRESUME)
% uiwait(handles.figure1);
background = axes('unit','normalized','position',[0 0  1 1 ]);
cover = imread('restoran.jpg'); imagesc(cover);
set(background,'handlevisibility','on','visible','on');
uistack(background,'bottom');


% --- Outputs from this function are returned to the command line.
function varargout = Restoran_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function jumlah1_Callback(hObject, eventdata, handles)
% hObject    handle to jumlah1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jumlah1 as text
%        str2double(get(hObject,'String')) returns contents of jumlah1 as a double


% --- Executes during object creation, after setting all properties.
function jumlah1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jumlah1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

harga1  =str2num(get(handles.harga1,'String'));
jumlah1 =str2num(get(handles.jumlah1,'String'));
if isempty(jumlah1)
    set(handles.n1,'String','Jika tidak memesan menu ini, harap isi angka 0');
else
    set(handles.n1,'String','');
end
harga2  =str2num(get(handles.harga2,'string'));
jumlah2 =str2num(get(handles.jumlah2,'string'));
if isempty(jumlah2)
    set(handles.n2,'String','Jika tidak memesan menu ini, harap isi angka 0');
else
    set(handles.n2,'String','');
end
harga3  =str2num(get(handles.harga3,'string'));
jumlah3 =str2num(get(handles.jumlah3,'string'));
if isempty(jumlah3)
    set(handles.n3,'String','Jika tidak memesan menu ini, harap kasih angka 0');
else
    set(handles.n3,'String','');
end
harga4  =str2num(get(handles.harga4,'string'));
jumlah4 =str2num(get(handles.jumlah4,'string'));
if isempty(jumlah4)
    set(handles.n4,'String','Jika tidak memesan menu ini, harap isi angka 0');
else
    set(handles.n4,'String','');
end
harga5  =str2num(get(handles.harga5,'string'));
jumlah5 =str2num(get(handles.jumlah5,'string'));
if isempty(jumlah5)
    set(handles.n5,'String','Jika tidak memesan menu ini, harap isi angka 0');
else
    set(handles.n5,'String','');
end
Total_Bayar=(harga1)*(jumlah1) + (harga2) *(jumlah2) + (harga3) * (jumlah3) + (harga4) * (jumlah4) + (harga5) * (jumlah5);
if (Total_Bayar)
    set(handles.total_harga,'String',Total_Bayar);
    set(handles.notice,'String','');
else
     set(handles.total_harga,'String','');
     set(handles.notice,'String','Jika tidak diberi angka 0, maka jumlah harga tidak akan terhitung ');
end
set(handles.pushbutton1,'Enable','on')

function jumlah2_Callback(hObject, eventdata, handles)
% hObject    handle to jumlah2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jumlah2 as text
%        str2double(get(hObject,'String')) returns contents of jumlah2 as a double


% --- Executes during object creation, after setting all properties.
function jumlah2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jumlah2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on button press in pushbutton2.
%memunculkan gambar
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function jumlah3_Callback(hObject, eventdata, handles)
% hObject    handle to jumlah3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jumlah3 as text
%        str2double(get(hObject,'String')) returns contents of jumlah3 as a double


% --- Executes during object creation, after setting all properties.
function jumlah3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jumlah3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jumlah4_Callback(hObject, eventdata, handles)
% hObject    handle to jumlah4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jumlah4 as text
%        str2double(get(hObject,'String')) returns contents of jumlah4 as a double


% --- Executes during object creation, after setting all properties.
function jumlah4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jumlah4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jumlah5_Callback(hObject, eventdata, handles)
% hObject    handle to jumlah5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jumlah5 as text
%        str2double(get(hObject,'String')) returns contents of jumlah5 as a double


% --- Executes during object creation, after setting all properties.
function jumlah5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jumlah5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function keluar_aplikasi_Callback(hObject, eventdata, handles)
% hObject    handle to keluar_aplikasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close

% -------------------------------------------------------------------