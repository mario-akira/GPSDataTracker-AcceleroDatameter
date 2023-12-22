%%
%Volta 3 1143---1205
inicio = 1143;
fim = 1205; 
corte_lat_3 = lat(inicio:fim,:);
corte_lon_3 = lon(inicio:fim,:);
corte_vel_3 = vel(inicio:fim,:);
%%
for m=length(corte_lat_3):89
    [corte_lat_3,corte_lon_3,corte_vel_3]=Completa(corte_lat_3,corte_lon_3,corte_vel_3)
end
%%
Plotagem_Real(corte_lat_3,corte_lon_3,corte_vel_3)