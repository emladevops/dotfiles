#while true; do xsetroot -name "$( date +"%F %R" )"; sleep 1m; done &
#xrandr --output eDP1 --off
#sleep 1s
#xrandr --output DP1 --auto
#while true; do xsetroot -name "$(date)"; sleep 1s; done &
while true; do
    xsetroot -name "Mem: $(free -m | grep '^Mem' | awk '{print " " $3 "MB / " $2"MB"}') |  $(top -bn 1 | grep '%Cpu' | tr -d 'usy,' | awk '{print "user " $2 ", sys " $3}') | : $(uptime | awk '{print $3}'m | tr -d ',') | $( date +"%F %R" )"
    sleep 10ms
done &
feh --bg-scale /home/emladevops/Downloads/wp.jpg
exec dwm
sleep 2s
exec nitrogen --restore
