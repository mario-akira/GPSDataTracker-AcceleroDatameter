%%
%Volta 6 1345---1405
inicio = 1336;
fim = 1395; 
corte_lat_6 = lat(inicio:fim,:);
corte_lon_6 = lon(inicio:fim,:);
corte_vel_6 = vel(inicio:fim,:);
%%
for m=length(corte_lat_6):89
    [corte_lat_6,corte_lon_6,corte_vel_6]=Completa(corte_lat_6,corte_lon_6,corte_vel_6)
end
%%
Plotagem_Real(corte_lat_6,corte_lon_6,corte_vel_6)