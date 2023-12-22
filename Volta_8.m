%%
%Volta 8 1465---1523
inicio = 1465;
fim = 1523; 
corte_lat_8 = lat(inicio:fim,:);
corte_lon_8 = lon(inicio:fim,:);
corte_vel_8 = vel(inicio:fim,:);
%%
for m=length(corte_lat_8):89
    [corte_lat_8,corte_lon_8,corte_vel_8]=Completa(corte_lat_8,corte_lon_8,corte_vel_8)
end
%%
Plotagem_Real(corte_lat_8,corte_lon_8,corte_vel_8)