%%
Latitude = xlsread('Data_Race.xlsx', 'A1:A15620');
Longitude = xlsread('Data_Race.xlsx','B1:B15620');
Velocidade = xlsread('Data_Race.xlsx','C1:C15620');
%%
[lat,lon,vel]= Exclui_Repetidos(Latitude,Longitude,Velocidade);
%%
%Volta 1 800---1075 Alternativo 993---1075
%Volta 2 1075---1143
%Volta 3 1143---1205
%Volta 4 1205---1280
%Volta 5 1280---1345
%Volta 6 1345---1405
%Volta 7 1405---1465
%Volta 8 1465---1523
%Volta 9 1523---1590
%Volta 10 1590---1678
%Volta 11 1678---1862
%C1 1862-1942
inicio = 993;%saida box 800
fim = 1678;%Fim arquivo  2232  
corte_lat_ = lat(inicio:fim,:);
corte_lon_ = lon(inicio:fim,:);
corte_vel_ = vel(inicio:fim,:);
Plotagem_Real(corte_lat_,corte_lon_,corte_vel_)
% Compara_Velocidade(corte_lat_,corte_lon_,corte_vel_)
%%
%Volta 1
inicio = 993;
fim = 1075; 
corte_lat_1 = lat_max(inicio:fim,:);
corte_lon_1 = lon_max(inicio:fim,:);
corte_vel_1 = vel_max(inicio:fim,:);
Plotagem_Real(corte_lat_1,corte_lon_1,corte_vel_1)
% M1 = Media_Velocidade(corte_vel_1);
%%
%Volta 2
inicio = 1075;
fim = 1143; 
corte_lat_2 = lat_max(inicio:fim,:);
corte_lon_2 = lon_max(inicio:fim,:);
corte_vel_2 = vel_max(inicio:fim,:);
Plotagem_Real(corte_lat_2,corte_lon_2,corte_vel_2)
%%
%Volta 3 1143---1205
inicio = 1143;
fim = 1205; 
corte_lat_3 = lat_max(inicio:fim,:);
corte_lon_3 = lon_max(inicio:fim,:);
corte_vel_3 = vel_max(inicio:fim,:);
Plotagem_Real(corte_lat_3,corte_lon_3,corte_vel_3)
%%
%Volta 4 1205---1280
inicio = 1205;
fim = 1280; 
corte_lat_4 = lat_max(inicio:fim,:);
corte_lon_4 = lon_max(inicio:fim,:);
corte_vel_4 = vel_max(inicio:fim,:);
Plotagem_Real(corte_lat_4,corte_lon_4,corte_vel_4)
%%
%Volta 5 1280---1345
inicio = 1280;
fim = 1345; 
corte_lat_5 = lat_max(inicio:fim,:);
corte_lon_5 = lon_max(inicio:fim,:);
corte_vel_5 = vel_max(inicio:fim,:);
Plotagem_Real(corte_lat_5,corte_lon_5,corte_vel_5)
M_5_1 = Media_Velocidade(corte_vel_5)
%%
%Volta 6 1345---1405
inicio = 1345;
fim = 1405; 
corte_lat_6 = lat_max(inicio:fim,:);
corte_lon_6 = lon_max(inicio:fim,:);
corte_vel_6 = vel_max(inicio:fim,:);
Plotagem_Real(corte_lat_6,corte_lon_6,corte_vel_6)
%%
%Volta 7 1405---1465
inicio = 1405;
fim = 1465; 
corte_lat_7 = lat_max(inicio:fim,:);
corte_lon_7 = lon_max(inicio:fim,:);
corte_vel_7 = vel_max(inicio:fim,:);
Plotagem_Real(corte_lat_7,corte_lon_7,corte_vel_7)
%%
%Volta 8 1465---1523
inicio = 1465;
fim = 1523; 
corte_lat_8 = lat_max(inicio:fim,:);
corte_lon_8 = lon_max(inicio:fim,:);
corte_vel_8 = vel_max(inicio:fim,:);
Plotagem_Real(corte_lat_8,corte_lon_8,corte_vel_8)
%%
%Volta 9 1523---1590
inicio = 1523;
fim = 1590; 
corte_lat_9 = lat_max(inicio:fim,:);
corte_lon_9 = lon_max(inicio:fim,:);
corte_vel_9 = vel_max(inicio:fim,:);
Plotagem_Real(corte_lat_9,corte_lon_9,corte_vel_9)
%%
%Volta 10 1590---1678
inicio = 1590;
fim = 1678; 
corte_lat_10 = lat_max(inicio:fim,:);
corte_lon_10 = lon_max(inicio:fim,:);
corte_vel_10 = vel_max(inicio:fim,:);
Plotagem_Real(corte_lat_10,corte_lon_10,corte_vel_10)
%%
%Volta 11 1678---1862
inicio = 1678;
fim = 1862; 
corte_lat_11 = lat_max(inicio:fim,:);
corte_lon_11 = lon_max(inicio:fim,:);
corte_vel_11 = vel_max(inicio:fim,:);
Plotagem_Real(corte_lat_11,corte_lon_11,corte_vel_11)
%%
%Comparando as velocidades
[lat_max,lon_max,vel_max]=Mximo(corte_lat_1,corte_lon_1,corte_vel_1,corte_lat_2,corte_lon_2,corte_vel_2);
[lat_max,lon_max,vel_max]=Mximo(lat_max,lon_max,vel_max,corte_lat_3,corte_lon_3,corte_vel_3);
[lat_max,lon_max,vel_max]=Mximo(lat_max,lon_max,vel_max,corte_lat_4,corte_lon_4,corte_vel_4);
[lat_max,lon_max,vel_max]=Mximo(lat_max,lon_max,vel_max,corte_lat_5,corte_lon_5,corte_vel_5);
[lat_max,lon_max,vel_max]=Mximo(lat_max,lon_max,vel_max,corte_lat_6,corte_lon_6,corte_vel_6);
[lat_max,lon_max,vel_max]=Mximo(lat_max,lon_max,vel_max,corte_lat_7,corte_lon_7,corte_vel_7);
[lat_max,lon_max,vel_max]=Mximo(lat_max,lon_max,vel_max,corte_lat_8,corte_lon_8,corte_vel_8);
[lat_max,lon_max,vel_max]=Mximo(lat_max,lon_max,vel_max,corte_lat_9,corte_lon_9,corte_vel_9);
Plotagem_Real(lat_max,lon_max,vel_max)