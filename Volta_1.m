%%
%Volta 1
inicio = 993;
fim = 1075; 
corte_lat_1 = lat(inicio:fim,:);
corte_lon_1 = lon(inicio:fim,:);
corte_vel_1 = vel(inicio:fim,:);
% M1 = Media_Velocidade(corte_vel_1);
%%
%Chama a funcao de adicao de pontos n vezes ate 100 pntos de pista
for m=length(corte_lat_1):89
    [corte_lat_1,corte_lon_1,corte_vel_1]=Completa(corte_lat_1,corte_lon_1,corte_vel_1)
end
%%
Plotagem_Real(corte_lat_1,corte_lon_1,corte_vel_1)