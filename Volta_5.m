%%
%Volta 5 1280---1345
inicio = 1270;
fim = 1335; 
corte_lat_5 = lat(inicio:fim,:);
corte_lon_5 = lon(inicio:fim,:);
corte_vel_5 = vel(inicio:fim,:);
%%
for m=length(corte_lat_5):89
    [corte_lat_5,corte_lon_5,corte_vel_5]=Completa(corte_lat_5,corte_lon_5,corte_vel_5)
end
%%
Plotagem_Real(corte_lat_5,corte_lon_5,corte_vel_5)