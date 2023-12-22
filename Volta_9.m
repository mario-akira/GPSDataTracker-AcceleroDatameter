%%
%Volta 9 1523---1590
inicio = 1523;
fim = 1590; 
corte_lat_9 = lat(inicio:fim,:);
corte_lon_9 = lon(inicio:fim,:);
corte_vel_9 = vel(inicio:fim,:);
%%
for m=length(corte_lat_9):89
    [corte_lat_9,corte_lon_9,corte_vel_9]=Completa(corte_lat_9,corte_lon_9,corte_vel_9)
end
%%
Plotagem_Real(corte_lat_9,corte_lon_9,corte_vel_9)