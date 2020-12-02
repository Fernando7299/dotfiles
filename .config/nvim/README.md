# Neovim Dotfiles
Para poder usar los pluggins, instala [vim-plug](https://github.com/junegunn/vim-plug) y ejecuta ```:PlugInstall```.

## Requisitos:
- Algunas dependencias
```
sudo pacman -S nodejs npm python python-pip
#
pip install neovim
sudo npm i -g neovim
```
- jedi
```
pip install jedi
```
- fzf
```
# Para sistemas basados en Arch
sudo pacman -S fzf ripgrep the_silver_searcher fd --needed
yay -S universal-ctags-git
#
# Para Ubuntu
sudo apt install fzf ripgrep universal-ctags silversearcher-ag fd-find
```
- [ranger](https://github.com/ranger/ranger)
 - [ranger devicons](https://github.com/alexanderjeurissen/ranger_devicons)
- ueberzug
```
# Para sistemas basados en Arch
yay -S python-ueberzug-git
# 
# Para otro sistemas, puede usar pip
```

## Controles básicos
Mapleader: ";"
### Modo inserción
| Tecla       | Acción               |
|-------------|----------------------|
|i i          | Entrar en modo normal|
|Control + c  | Entrar en modo normal|

### Modo normal:
|Tecla        | Acción           |
|-------------|------------------|
|j            | Abajo            |
|k            | Arriba           |
|h            | Izquierda        |
|l            | Derecha          |
|space + r    | Abrir "ranger"   |
|space + e    | Coc Explorer     |
|Alt + Tab    | Siguiente pestaña|
|Shift + Tab  | Anterior pestaña |
|Control + s  | Guardar archivo  |
|Control + q  | Guardar y salir  |

### Modo visual

|Tecla          | Acción             |
|---------------|--------------------|
|space + /      | Comentar linea     |
|J              | Mover línea abajo  |
|K              | Mover línea arriba |
|(Shift + <) o >| Añadir indentación |
|<              | Quitar indentación |
