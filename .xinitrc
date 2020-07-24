xwallpaper --center ~/.config/resources/wp2.jpg
picom -b
(conky | while read LINE; do 
VOL=$(pamixer --get-volume);
XBACKFLOAT=$(xbacklight -get); 
XBACKLIGHT=$(echo $XBACKFLOAT | cut -d. -f1);
MUTE="";
if [ $(pamixer --get-mute) == true ]
then
	MUTE=" (MUTED)";
fi
xsetroot -name "[$MUTE Volume: $VOL% | Brightness: $XBACKLIGHT% $LINE ";
done) &
exec dwm
