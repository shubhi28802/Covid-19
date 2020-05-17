function varargout = covid_gui(varargin)
% COVID_GUI MATLAB code for covid_gui.fig
%      COVID_GUI, by itself, creates a new COVID_GUI or raises the existing
%      singleton*.
%
%      H = COVID_GUI returns the handle to a new COVID_GUI or the handle to
%      the existing singleton*.
%
%      COVID_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COVID_GUI.M with the given input arguments.
%
%      COVID_GUI('Property','Value',...) creates a new COVID_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before covid_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to covid_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help covid_gui

% Last Modified by GUIDE v2.5 16-May-2020 22:04:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @covid_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @covid_gui_OutputFcn, ...
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


% --- Executes just before covid_gui is made visible.
function covid_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to covid_gui (see VARARGIN)

% Choose default command line output for covid_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes covid_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = covid_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in SEL_COUN_PM1.
function SEL_COUN_PM1_Callback(hObject, eventdata, handles)
% hObject    handle to SEL_COUN_PM1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns SEL_COUN_PM1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from SEL_COUN_PM1
load ('DATA.mat')
contents = cellstr(get(hObject,'String'));
choice = contents{get(hObject,'Value')};
sum_c = 0;
sum_d = 0;
if (strcmp(choice,'NONE'))
    sum_c=0;
    sum_d=0;
    a=0;
    set(handles.edit1,'string',sum_c)
    set(handles.edit2,'string',sum_d)
elseif (strcmp(choice,'GERMANY'))
    for x=1:121
        if(isnan(data.cases(x))==0)
            sum_c=sum_c+data.cases(x);
        end
        if(isnan(data.deaths(x))==0)
            sum_d=sum_d+data.deaths(x);
        end
    end
    a=1;
    set(handles.edit1,'string',sum_c)
    set(handles.edit2,'string',sum_d)
elseif (strcmp(choice,'CHINA'))
    for x=123:243
        if(isnan(data.cases(x))==0)
            sum_c=sum_c+data.cases(x);
        end
        if(isnan(data.deaths(x))==0)
            sum_d=sum_d+data.deaths(x);
        end
    end
    a=2;
    set(handles.edit1,'string',sum_c)
    set(handles.edit2,'string',sum_d) 
elseif (strcmp(choice,'INDIA'))
    for x=245:364
        if(isnan(data.cases(x))==0)
            sum_c=sum_c+data.cases(x);
        end
        if(isnan(data.deaths(x))==0)
            sum_d=sum_d+data.deaths(x);
        end
    end
    a=3;
    set(handles.edit1,'string',sum_c)
    set(handles.edit2,'string',sum_d)
elseif (strcmp(choice,'ITALY'));
    for x=366:486
        if(isnan(data.cases(x))==0)
            sum_c=sum_c+data.cases(x);
        end
        if(isnan(data.deaths(x))==0)
            sum_d=sum_d+data.deaths(x);
        end
    end
    a=4;
    set(handles.edit1,'string',sum_c)
    set(handles.edit2,'string',sum_d)
elseif (strcmp(choice,'USA'))
    for x=488:608
        if(isnan(data.cases(x))==0)
            sum_c=sum_c+data.cases(x);
        end
        if(isnan(data.deaths(x))==0)
            sum_d=sum_d+data.deaths(x);
        end
    end
    a=5;
    set(handles.edit1,'string',sum_c)
    set(handles.edit2,'string',sum_d)
end

% --- Executes during object creation, after setting all properties.
function SEL_COUN_PM1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SEL_COUN_PM1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
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


% --- Executes on button press in conpb.
function conpb_Callback(hObject, eventdata, handles)
% hObject    handle to conpb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load ('DATA.mat')
contents = get(handles.SEL_COUN_PM1,'String');
choice = contents{get(handles.SEL_COUN_PM1,'Value')};
switch choice
    case 'NONE'
        x=0;
        y=0;
        clc;
        clear all;        
    case 'GERMANY'
        x=data.dateRep(1:121);
        y=data.cases(1:121);        
        figure (1);
        plot(x,y);
        title('GERMANY');
        xlabel('MM-YYYY');
        ylabel('no of cases');
    case 'CHINA'
        x=data.dateRep(123:243);
        y=data.cases(123:243);        
        figure (1);
        plot(x,y);
        title('CHINA');
        xlabel('MM-YYYY');
        ylabel('no of cases');
    case 'INDIA'
        x=data.dateRep(245:364);
        y=data.cases(245:364);
        
        figure (1);
        plot(x,y);
        title('INDIA');
        xlabel('MM-YYYY');
        ylabel('no of cases');
    case 'ITALY'
        x=data.dateRep(366:486);
        y=data.cases(366:486);        
        figure (1);
        plot(x,y);
        title('ITALY');
        xlabel('MM-YYYY');
        ylabel('no of cases');
    case 'USA'
        x=data.dateRep(488:608);
        y=data.cases(488:608);
       
        figure (1);
        plot(x,y);
        title('UNITED STATES OF AMERICA');
        xlabel('MM-YYYY');
        ylabel('no of cases');
end



% --- Executes on button press in decpb.
function decpb_Callback(hObject, eventdata, handles)
% hObject    handle to decpb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load ('DATA.mat')
contents = get(handles.SEL_COUN_PM1,'String');
choice = contents{get(handles.SEL_COUN_PM1,'Value')};
switch choice
    case 'NONE'
        x=0;
        y=0;
        clc;
        clear all;       
    case 'GERMANY'
        x=data.dateRep(1:121);
        y=data.deaths(1:121);        
        figure (1);
        plot(x,y);
        title('GERMANY');
        xlabel('MM-YYYY');
        ylabel('no of deaths');
    case 'CHINA'
        x=data.dateRep(123:243);
        y=data.deaths(123:243);        
        figure (1);
        plot(x,y);
        title('CHINA');
        xlabel('MM-YYYY');
        ylabel('no of deaths');
    case 'INDIA'
        x=data.dateRep(245:364);
        y=data.deaths(245:364);        
        figure (1);
        plot(x,y);
        title('INDIA');
        xlabel('MM-YYYY');
        ylabel('no of deaths');
    case 'ITALY'
        x=data.dateRep(366:486);
        y=data.deaths(366:486);       
        figure (1);
        plot(x,y);
        title('ITALY');
        xlabel('MM-YYYY');
        ylabel('no of deaths');
    case 'USA'
        x=data.dateRep(488:608);
        y=data.deaths(488:608);        
        figure (1);
        plot(x,y);
        title('UNITED STATES OF AMERICA');
        xlabel('MM-YYYY');
        ylabel('no of deaths');
end

% --- Executes on button press in botpb.
function botpb_Callback(hObject, eventdata, handles)
% hObject    handle to botpb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load ('DATA.mat')
contents = get(handles.SEL_COUN_PM1,'String');
choice = contents{get(handles.SEL_COUN_PM1,'Value')};
switch choice
    case 'NONE'
        x=0;
        y=0;
        clc;
        clear all;
    case 'GERMANY'
        x=data.dateRep(1:121);
        y=data.cases(1:121);
        z=data.deaths(1:121);       
        figure (2);
        subplot(2,1,1);
        plot(x,y);
        title('GERMANY - total cases');
        xlabel('MM-YYYY');
        ylabel('no of cases');
        subplot(2,1,2);
        plot(x,z);
        title('GERMANY - total deaths');
        xlabel('MM-YYYY');
        ylabel('no of deaths');
    case 'CHINA'
        x=data.dateRep(123:243);
        y=data.cases(123:243);
        z=data.deaths(123:243);      
        figure (2);
        subplot(2,1,1);
        plot(x,y);
        title('CHINA - total cases');
        xlabel('MM-YYYY');
        ylabel('no of cases');
        subplot(2,1,2);
        plot(x,z);
        title('CHINA - total deaths');
        xlabel('MM-YYYY');
        ylabel('no of deaths');
    case 'INDIA'
        x=data.dateRep(245:364);
        y=data.cases(245:364);
        z=data.deaths(245:364);       
        figure (2);
        subplot(2,1,1);
        plot(x,y);
        title('INDIA - total cases');
        xlabel('MM-YYYY');
        ylabel('no of cases');
        subplot(2,1,2);
        plot(x,z);
        title('INDIA - total deaths');
        xlabel('MM-YYYY');
        ylabel('no of deaths');
    case 'ITALY'
        x=data.dateRep(366:486);
        y=data.cases(366:486);
        z=data.deaths(488:608);        
        figure (2);
        subplot(2,1,1);
        plot(x,y);
        title('ITALY - total cases');
        xlabel('MM-YYYY');
        ylabel('no of cases');
        subplot(2,1,2);
        plot(x,z);
        title('ITALY - total deaths');
        xlabel('MM-YYYY');
        ylabel('no of deaths');
    case 'USA'
        x=data.dateRep(488:608);
        y=data.cases(488:608);
        z=data.deaths(488:608);        
        figure (2);
        subplot(2,1,1);
        plot(x,y);
        title('USA - total cases');
        xlabel('MM-YYYY');
        ylabel('no of cases');
        subplot(2,1,2);
        plot(x,z);
        title('USA - total deaths');
        xlabel('MM-YYYY');
        ylabel('no of deaths');
end