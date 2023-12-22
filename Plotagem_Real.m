function [output_args] = Plotagem_Real(lat,lon,vel)
    figure
    for i=2:length(lat)
        if vel(i)>60
            plot(lon(i),lat(i),'om')%b
            hold on
        elseif (vel(i)<=60) && (vel(i)>50)
            plot(lon(i),lat(i),'ob')%c
            hold on
        elseif (vel(i)<=50) && (vel(i)>40)
            plot(lon(i),lat(i),'oc')%g
            hold on
        elseif (vel(i)<=40) && (vel(i)>30)
            plot(lon(i),lat(i),'og')%m
            hold on
        elseif (vel(i)<=30) && (vel(i)>20)
            plot(lon(i),lat(i),'oy')%y
            hold on
        else
            plot(lon(i),lat(i),'or')%r
            hold on
        end
    end
    ylim([-22.7390 -22.7369])
    xlim([-47.5352 -47.5336])
end