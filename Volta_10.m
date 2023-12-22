%%
%Volta 10 1590---1678
inicio = 1590;
fim = 1678; 
corte_lat_10 = lat(inicio:fim,:);
corte_lon_10 = lon(inicio:fim,:);
corte_vel_10 = vel(inicio:fim,:);
%%
for m=length(corte_lat_10):89
    [corte_lat_10,corte_lon_10,corte_vel_10]=Completa(corte_lat_10,corte_lon_10,corte_vel_10)
end
%%
Plotagem_Real(corte_lat_10,corte_lon_10,corte_vel_10)