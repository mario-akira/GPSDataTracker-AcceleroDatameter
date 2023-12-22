%%
%Volta 4 1205---1280
inicio = 1195;
fim = 1269; 
corte_lat_4 = lat(inicio:fim,:);
corte_lon_4 = lon(inicio:fim,:);
corte_vel_4 = vel(inicio:fim,:);
%%
%Chama a funcao de adicao de pontos n vezes ate 100 pntos de pista
for m=length(corte_lat_4):89
    [corte_lat_4,corte_lon_4,corte_vel_4]=Completa(corte_lat_4,corte_lon_4,corte_vel_4)
end
%%
Plotagem_Real(corte_lat_4,corte_lon_4,corte_vel_4)