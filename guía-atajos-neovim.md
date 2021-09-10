<p align="center" width="0">
   <img align="center" width="700" src="https://github.com/josueromram/nvim-config-windows7-8-10-11/blob/nvim/screenshot/neovim-logo-1color.png">
</p>

<H1 align="center">Guía completa de atajos para mejorar la productividad en NeoVim.</H1>

Lo que leerás serán todos los comandos que contiene mi configuración de nvim, los siguientes comandos se pueden usar solamente presionando la tecla que indíco en modo **NORMAL.**

Esc = nos permite salir de cualquier modo ya sea INSERT, V-BLOCK, V,LINE, REPLACE, entre otros. Llevandonos al modo NORMAL.
i = permite entrar al modo INSERT, donde se puede insertar código al archivo.
v = permite entrar al modo VISUAL, donde se puede seleccionar código, copiar, mover, etc.

## EN MODO NORMAL

gg = situa el cursor al inicio del archivo.
G = situa el cursor al final del archivo.
w = posiciona el cursor al inicio de cada palabra.
e = posiciona el cursor al final de cada palabra.
b = posiciona el cursor al inicio de cada pantalla, pero en sentido contrario.
i = permite entrar en modo INSERT, este posiciona el cursor antes de la letra.
a = permite entrar en modo INSERT, este posiciona el cursor despues de la letra.
x = elimina carácter por carácter.
r = solo permite reemplazar un carácter por otro, entrando y saliendo del modo insertar automáticamente.
o = genera un línea vacía debajo del el cursor, como un enter.
shift + o = genera un línea vacía arriba del el cursor.
u = permite regresarnos a algún cambio o deshacer.
ctrl + r = permite volver a algún cambio o rehacer.
shift + c = corta todos los carácteres que se encuentren a la derecha del cursor.
p = permite pegar contenido copiado, justo una línea debajo del cursor.
shift + p = permite pegar el contenido copiado, justo una línea arriba del curso.
dd = corta la línea y la guarda en portapapeles.
dw = elimina el contenido de una palabra desde donde este posicionado el cursor.
db = elimina la palabra más cercana que este a la izquierda del cursor.
d6w = eliminará solo las 6 primeras palabras a la derecha del cursor; un ejemplo, si presionas d9w solo eliminará las 9 palabras que siguen despues del cursor.
d$ = elimina todas las palabras que se encuentren después del cursor.
cw = permite reemplazar una cadena de carácteres por otra, pero el cursor se debe estar posicionado justo al inicio o en la primera letra de la palabra.
ciw = permite reemplazar una cadena de carácteres por otra, pero el cursor puede estar situado en cualquier parte de la palabra.
#línea + G = situa el cursor justo en el número de línea que le indiques como por ejemplo, si presiono 19G, este posicionará el cursor en esa linea del archivo.
ctrl + r = permite rehacer cambios.
ctrl + o = abre los anteriores archivos o pestañas abiertos.
ctrl + y = nos permite realizar scroll hacia arriba de 10 líneas en 10.
crtl + e = nos permite realizar scroll hacia abajo de 10 líneas en 10.
shift + 5 = para que funcione debes situar el cursor en la llave, corchete o paréntesis que abre o cierra para que con este comando pueda posicionar el cursor en la llave, corchete, entre comilla o paréntesis.
shift + r = entra en modo reemplazar, nos permite cambiar la posición de cada carácter de dicha cadena.

/ + palabra = sirve para buscar palabras en el archivo situado por ejemplo: si presionas / y escribes edad y das un enter, se buscará la palabra edad en todo el documento y sí hay coincidencias las resaltará con colores diferentes. Posteriormente, podrás despazarte de palabra en palabra presionando la letra n, hacia delante y con N hacia detras.

:%s/palabra-a-reemplazar/nuevo-reemplazo/gc = permite reemplaza la palabra o las palabras que esten en el archivo, si realizas esto :%s/sopa/arroz/gc, este hará que la palabra arroz se cambie por la palabra sopa.

s = para que funcione debes abrir la NERTreeToggle o Árbol Lateral. Luego, ubica el cursor en el archivo que deseas abrir, al presionar (s), abrirá el archivo que quedará ocupará la mitad de la pantalla horizontalmente.

Podrás cortar varías líneas con la cantidad de líneas que hayan debajo del cursor más dos veces la tecla d, por ejemplo, si presionar en modo normal: 6dd cortará las 6 líneas debajo de donde este el cursor, hablo de cortar porque no existe el comando para eliminar, ese comando guarde lo cortado en el clipboard ya que si presionas p despues de eso veraz que pegará el contenido.

## EN MODO VISUAL, V-LINE y V_BLOCK

y = permite copiar el código seleccionado.
c = permite cortar lo que tengas seleccionado.


## OTROS ATAJOS MÁS COMPLETOS
Todos los comandos que mencionaré podrán efectuar su tarea siempre y cuándo presiones la tecla <Leader> antes de las letras, la tecla líder es: espacio.

espacio+w = guarda los cambios del archivo.
espacio+q = no guarda lo cambios y sale de nvim.
espacio+x = sale directamente de nvim.

gd = lleva el cursor a la definición o creación del método o atributo.
gf = nos abre la definición del método o clase en su archivo origen.
  
