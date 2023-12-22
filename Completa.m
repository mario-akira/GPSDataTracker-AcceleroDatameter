function [lat_c,lon_c,vel_c] = Completa(lat,lon,vel)
lat_aux = lat;
lon_aux = lon;
vel_aux = vel;

%Verificando a distancia entre todos os pontos
for i=2:length(lat)
    dist_lat(i) = abs(lat(i)-lat(i-1));
    dist_lon(i) = abs(lon(i)-lon(i-1));
    dist(i) = sqrt(dist_lat(i)^2 + dist_lon(i)^2);
end 
%Calcula o ponto medio na maior distancia e a vel media
pos = find(dist==max(dist));
lat_media = (lat(pos)+lat(pos-1))/2;
lon_media = (lon(pos)+lon(pos-1))/2;
vel_media = (vel(pos)+vel(pos-1))/2;
%Adiciona o vetor até o ponto maximo
for j=1:(pos-1)
    lat_aux(j) = lat(j);
    lon_aux(j) = lon(j);
    vel_aux(j) = vel(j);
end
%Adiciona os pontos calculados
lat_aux(pos) = lat_media;
lon_aux(pos) = lon_media;
vel_aux(pos) = vel_media;
%Adiciona o resto do vetor
for k=(pos):length(lat)
    lat_aux(k+1) = lat(k);
    lon_aux(k+1) = lon(k);
    vel_aux(k+1) = vel(k);
end
lat_c=lat_aux;
lon_c=lon_aux;
vel_c=vel_aux;
end