from libqtile.config import Key
from libqtile.command import lazy


mod = "mod4"

keys = [Key(key[0], key[1], *key[2:]) for key in [
    # ------------ Configuración de las ventanas ------------

    # Cambia el foco de la ventana en la pila actual
    ([mod], "j", lazy.layout.down()),
    ([mod], "k", lazy.layout.up()),
    ([mod], "h", lazy.layout.left()),
    ([mod], "l", lazy.layout.right()),

    # Cambiar el tamaño de la ventana principal (MonadTall)
    ([mod, "shift"], "l", lazy.layout.grow()),
    ([mod, "shift"], "h", lazy.layout.shrink()),

    # Cambiar ventana a modo flotante
    ([mod, "shift"], "f", lazy.window.toggle_floating()),

    # Nornaliza los tamaños de las ventanas
    ([mod], "n", lazy.layout.normalize()),

    # Maximizar ventana
    ([mod], "m", lazy.layout.maximize()),

    # Mueve la ventana en la pila actual
    ([mod, "shift"], "j", lazy.layout.shuffle_down()),
    ([mod, "shift"], "k", lazy.layout.shuffle_up()),

    # Cambia entre los diferentes layouts
    ([mod], "Tab", lazy.next_layout()),
    ([mod, "shift"], "Tab", lazy.prev_layout()),

    # Cerrar ventana actual
    ([mod], "w", lazy.window.kill()),

    # Cambia el entre monitores
    ([mod], "period", lazy.next_screen()),
    ([mod], "comma", lazy.prev_screen()),

    # Reinicia QTile
    ([mod, "control"], "r", lazy.restart()),

    # Apaga QTile
    ([mod, "control"], "q", lazy.shutdown()),

    # ------------ App Configs ------------

    # Lanzador Rofi
    ([mod], "space", lazy.spawn("rofi -show drun")),
    # ([mod, "control"], "space", lazy.spawn("rofi -show drun -run-command 'sudo {cmd}'")),

    # Cambiar ventanas Rofi
    ([mod, "shift"], "space", lazy.spawn("rofi -show")),

    # Navegador
    ([mod], "b", lazy.spawn("firefox")),

    # File Explorer
    ([mod], "e", lazy.spawn("thunar")),

    # Terminal
    ([mod], "Return", lazy.spawn("alacritty")),

    # Redshift
    ([mod], "r", lazy.spawn("redshift -O 2400")),
    ([mod, "shift"], "r", lazy.spawn("redshift -x")),

    # Screenshot
    ([mod], "s", lazy.spawn("scrot")),

    # ------------ Hardware Configs ------------

    # Volumen
    ([], "XF86AudioLowerVolume", lazy.spawn("pamixer --decrease 5")),

    ([], "XF86AudioRaiseVolume", lazy.spawn("pamixer --increase 5")),

    ([], "XF86AudioMute", lazy.spawn("pamixer --toggle-mute")),

    # Brillo de pantalla
    #([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +10%")),
    #([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl set 10%-")),
]]
