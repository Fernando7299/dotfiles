from libqtile.config import Key, Group
from libqtile.command import lazy
from settings.keys import mod, keys


groups = [Group(j,**kwargs) for j, kwargs in [
    ("   ", {'layout': 'monadtall'}),
    ("   ", {'layout': 'monadtall'}),
    ("   ", {'layout': 'monadtall'}),
    ("   ", {'layout': 'monadtall'}),
    ("   ", {'layout': 'monadtall'}),
    ("   ", {'layout': 'monadtall'}),
    ("   ", {'layout': 'monadtall'}),
    ("   ", {'layout': 'monadtall'}),
    (" 漣  ", {'layout': 'monadtall|'}),
]]

for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend([
        # Cambiar al espacio de trabajo "n"
        Key([mod], actual_key, lazy.group[group.name].toscreen()),
        # Enviar la ventana al espacio "n"
        Key([mod, "shift"], actual_key, lazy.window.togroup(group.name))
    ])
