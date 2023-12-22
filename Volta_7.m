%%
%Volta 7 1405---1465
inicio = 1405;
fim = 1465; 
corte_lat_7 = lat(inicio:fim,:);
corte_lon_7 = lon(inicio:fim,:);
corte_vel_7 = vel(inicio:fim,:);
%%
for m=length(corte_lat_7):89
    [corte_lat_7,corte_lon_7,corte_vel_7]=Completa(corte_lat_7,corte_lon_7,corte_vel_7)
end
%%
Plotagem_Real(corte_lat_7,corte_lon_7,corte_vel_7)