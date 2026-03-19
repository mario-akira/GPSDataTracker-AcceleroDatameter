import serial              
from time import sleep,strftime
import csv
from gpiozero import RGBLED
from mpu6050 import mpu6050


led = RGBLED(red=22, green=27, blue=17)


sensor = mpu6050(0x68)

def GPS_Info():
    global NMEA_buff
    global lat_in_degrees
    global long_in_degrees
    global vel_in_kmh
    nmea_time = []
    nmea_latitude = []
    nmea_longitude = []
    nmea_vel = []
    nmea_time = NMEA_buff[0]
    nmea_latitude = NMEA_buff[2]
    nmea_longitude = NMEA_buff[4]
    nmea_vel = NMEA_buff[6]

    #verifica n/s e l/o
    nmea_sinal_lat = NMEA_buff[3] 
    nmea_sinal_lon = NMEA_buff[5]
    
   
    lat = float(nmea_latitude)
    longi = float(nmea_longitude)
    vel = float(nmea_vel)

    if (nmea_sinal_lat == "S" or nmea_sinal_lat == "s"):
        lat = (-1)*lat
    if (nmea_sinal_lon == "W" or nmea_sinal_lon == "w"):
        longi = (-1)*longi
    
    lat_in_degrees = convert_to_degrees(lat)
    long_in_degrees = convert_to_degrees(longi)
    vel_in_kmh = 1.852*vel

    


def convert_to_degrees(raw_value):
    decimal_value = raw_value/100.00
    degrees = int(decimal_value)
    mm_mmmm = (decimal_value - int(decimal_value))/0.6
    position = degrees + mm_mmmm
    position = "%.6f" %(position)
    led.color = (0, 0, 1)
    return position
    


gpgga_info = "$GPRMC,"
ser = serial.Serial ("/dev/ttyAMA0")
GPGGA_buffer = 0
NMEA_buff = 0
lat_in_degrees = 0
long_in_degrees = 0
vel_in_kmh = 0




while True:
    #GPS
    received_data = (str)(ser.readline())
    GPGGA_data_available = received_data.find(gpgga_info)                
    #Acelerometro
    ac_data = sensor.get_accel_data(g = True)
    recieve_ac = (str)(ac_data)
    recieve_ac = recieve_ac.translate({ord(i): None for i in "{'x': yz}"})  #Remove os simbolos desnecessarios
    ac_buffer = (recieve_ac.split(','))#Vetoiza a string Gx=[0], Gy=[1], Gz=[2]
    if (GPGGA_data_available>0):
        GPGGA_buffer = received_data.split("$GPRMC,",1)[1]
        NMEA_buff = (GPGGA_buffer.split(','))
        GPS_Info()
 
        print("lat in degrees:", lat_in_degrees," long in degree: ", long_in_degrees, '\n'," velocity in kmh: ", vel_in_kmh, '\n')
        print ("Gx: ",ac_buffer[0],"Gy: ",ac_buffer[1],"Gz: ",ac_buffer[2],'\n')
        f = open('Data_Race.csv','a',newline='')
        thewriter = csv.writer(f, delimiter = '\t')
        led.color = (0, 1, 0)
        thewriter.writerow([lat_in_degrees,long_in_degrees,vel_in_kmh,
                            strftime("%H:%M:%S"),ac_buffer[0],
                            ac_buffer[1],ac_buffer[2]])
        
        
