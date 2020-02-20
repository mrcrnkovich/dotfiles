# Adjust keyboard typematic delay and rate
xset r rate 270 30

# Start Xorg server at this DPI
xrandr --dpi 150

# Merge & load Config
# from .Xresources
xrdb  ~/.Xresources

export QT_AUTO_SCREEN_SCALE_FACTOR=1.5
export GDK_SCALE=1.5
export GDK_DPI_SCALE=1.5

exec i3
