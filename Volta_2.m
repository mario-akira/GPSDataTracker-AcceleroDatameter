%%
%Volta 2
inicio = 1075;
fim = 1143; 
corte_lat_2 = lat(inicio:fim,:);
corte_lon_2 = lon(inicio:fim,:);
corte_vel_2 = vel(inicio:fim,:);
%%
%Chama a funcao de adicao de pontos n vezes ate 100 pntos de pista
for m=length(corte_lat_2):89
    [corte_lat_2,corte_lon_2,corte_vel_2]=Completa(corte_lat_2,corte_lon_2,corte_vel_2)
end
%%
Plotagem_Real(corte_lat_2,corte_lon_2,corte_vel_2)