function [output_args] = Plotagem(lat,lon,vel)
    figure
    for i=2:length(lat)
        if vel(i)>vel(i-1)
            plot(lat(i),lon(i),'ob')
            hold on
        elseif vel(i)<=(0.75*vel(i-1))
            plot(lat(i),lon(i),'oy')
            hold on
        elseif vel(i)<=(0.25*vel(i-1))
            plot(lat(i),lon(i),'or')
            hold on
        else
            plot(lat(i),lon(i),'og')
            hold on
        end
    end
end