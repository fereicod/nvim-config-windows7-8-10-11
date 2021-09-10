# Guía completa de atajos para mejorar la productividad en NeoVim.

## Estos son los comandos que utilizo en mi configuración de nvim.

Los siguientes comandos se pueden usar solamente presionando la tecla espacio más las letras que veráz:

w = lleva el cursor en modo normal al inicio de cada palabra en adelante.

b = lleva el cursor en modo normal al inicio de cada pantalla, pero de regreso.

e = lleva el cursor al final de cada palabra.

dw = elimina el contenido de una palabra desde donde este posicionado el cursor.

i = coloca el cursor antes de la letra en modo normal.

a = coloca el cursor despues de la letra en modo normal.

x = eliminamos carácter por carácter en modo normal.

:wq = guarda los cambios del archivo y cierra neovim.

gd = lleva el cursor a la definición o creación del método o atributo.

gf = nos abre la definición del método o clase en su archivo origen.

ctrl + o = regresa el cursor a las posiciones anteriores.

ctrl + y = este también realiza la misma función que ctrl + o pero con un pequeño cambio.

u = deshacer.
ctrl + r = rehacer.

dd = corta la línea y la guarda en portapapeles.

(d+$) = elimina todas las palabras que se encuentren después del cursor, sin eliminar la línea.

(d+w) = elimina solo la palabra que este a su derecha.

(d+b) = elimina la palabra que este a la izquierda.

(d+6+w) = elimina solo los primeros 6 caracteres a la derecha del cursor; ejemplo: d+9+w

Podremos eliminar y cortar varías líneas con (la cantidad de líneas hacía abajo + dd) ejemplo: 6dd en modo normal cortará el contenido que haya.

y = permite copiar, debes seleccionar el contenido en modo visual y presionar (y).

c = cortamos lo que seleccionemos en modo visual.

shift + c = corta todos los carácteres que se encuentren a la derecha del cursor.

p = permite pegar una línea debajo el contenido en modo normal. 

shift + p = permite pegar el contenido en la línea de arriba.

r = solo permite reemplazar un carácter por otro, entrando y saliendo del modo insertar automáticamente.

ciw = permite reemplazar la cadena de carácteres por otra, el atajo elimina toda la palabra donde se encuentre situado el cursor y nos deja en modo insertar.

gg = nos situa al inicio del archivo.
G = nos situa al final del archivo.

(número de la línea + G) = situará el cursor justo en la línea que le indiquemos como por ejemplo: 19G.

(/nombre del método) = sirve para buscar esa palabra en el archivo por ejemplo: /edad = buscará la palabra edad en todo el documento y sí hay coincidencias las resaltará con colores, podrás despazarte de palabra en palabra presionando la letra n y con N se regresa.

shift + 5 = debo situarme en la llave, corchete o paréntesis para que con este comando pueda saber dónde cierra el otro corchete.

o = genera un línea vacía debajo del cursor.

shift + o = genera una línea vacía arriba del cursor.

:%s/palabra del código/asignar nueva palabra/gc = permite reemplazar todas las palabras que deseemos por otra, se utiliza así: :%s/Ingresé/Digite/gc

shift + r = entra en modo reemplazar, nos permite cambiar la posición de cada carácter de dicha cadena.

s = para que funcione abre la Side Bar, NERTree o Árbol, ubica el cursor en el archivo que deseas abrir, al presionar (s), abrirá el archivo en un buffer o tabs distinto, la pantalla quedará dividida.
