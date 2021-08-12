<p align="center"><a href="https://twitter.com/Josueromram/" target="_blank">
    <img src="https://pbs.twimg.com/media/E8ZadT0XsAcC_ff?format=jpg&name=large">
</a></p>

# Instalación y Configuración de Neovim v0.5.0 para Windows 8, 10 & 11 Agosto, 2021.

## Introducción.
En el presente proyecto se describe el proceso a seguir para personalizar e instalar **NEOVIM** en su versión más reciente 0.5.0 2021, proyecto realizado tras la devaluación e ineficiencia de instalaciones que hay sobre neovim en español para el sistema operativo **Windows 8, 10 y 11**, gran parte de los programadores profesionales utilizan este editor de código muy profesional. Asimismo este estudio de elaboración propia revela la calidad de instalación, configuración y personalización. Para una mejor comprensión del presente informe debe enfocarse y descargar cada una de las herramientas inicializadas a continuación:

## Herramientas necesarias.

1. Instalar **Windows Terminal**
2. Instalar manejador de paquetes **Chocolatey & Neovim**
3. Instalar **Git**
4. Instalar **Node.js**
5. Descargar archivos publicados en **este repositorio**

**Tenga en cuenta que:** para instalar Neovim, si o si necesitará utilizar todas esas 5 herramientas, para ello aquí conocerás el paso a paso para instalar cada una correctamente sin errores ni falsa información, cabe mensionar que, Windows PowerShell viene instalado de fabrica en el S.O windows, por eso no será necesario explicar el como ejecutarlo ni instalarlo ¡¡esto usted ya debe saberlo!!.

# Paso a paso para la instalación de NeoVim.
### Paso No. 1. Instalar Windows Terminal.
Amiga o amigo para realizar la instalación primero abre Microsft Store o Tienda de Windows; una vez se inicie debes escribir en la barra de busqueda lo siguiente: **windows terminal**, luego de esto, debes seleccionar el programa que se encuentra en la sgt captura de pantalla, lo más seguro es que te aparecerá de primero.

![](https://pbs.twimg.com/media/E6NZFyyXMAIxUNv?format=jpg&name=large)

Una vez finalice la instalación ejecutalo como administrador porque se necesetirá para añadirle unos comandos, el motivo por el cual recomiendo su instalación es para que neovim tenga una apariencia intuitiva y elegante, tambien podrían usar la **cmd o simbolo del sistema**, pero lo malo es que con esa terminal neovim nunca se verá igual a como en la terminal nueva, si quieres pruebalo Cv.

### Paso No. 2. Instalar Chocolatey & Neovim.
Chocolatey es un gran gestor de paquetes que nos permite instalar programas desde la terminal; si o si debes instalarlo para luego instalar una dependencia de neovim, debes copiar los comandos que te dejo y pegarlos en la terminal recientemente instalada.

Ejecuta este primer comando para conocer el estado de las restricciones de tu máquina:
   ```sh
   Get-ExecutionPolicy
   ```  
Luego ejecuta este otro comando:
   ```sh
   Set-ExecutionPolicy AllSigned
   ``` 
Y por último ejecuta este comando, ya que define la instalación de Chocolatey:
   ```sh
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
   ```
Añado una captura de pantalla, esto es lo que debe devolver el comando utilizado.
![](https://pbs.twimg.com/media/E8ZakdaXsAAwiBY?format=png&name=medium)

Ahora copia y pega este comando para instalar neovim en su versión 0.5.0 o la más reciente que haya cuándo la valles a instalar.
   ```sh
   choco install neovim
   ``` 
Cuando te salga este mensaje en la terminal: 
> Do you want to run the script?([Y]es/[A]ll - yes to all/[N]o/[P]rint): 

Debes digitar la letra **N** y dar un enter para así aceptar todos los permisos y finalizar con la instalación de Neovim junto al gestor de paquetes Chocolatey.
![]()

### Paso No. 3. Instalar Git.
Git es un software de control de versiones diseñado por **Linus Torvalds** quién es él mismo creador del Sistema Operativo **LINUX**, fue pensado en la eficiencia, la confiabilidad y compatibilidad para mantenimientos de versiones; para realizar la instalación de **git** da un [click aquí](https://git-scm.com/downloads "https://git-scm.com/downloads"), este es un enlace que te llevará a la pagina oficial de **Git.**, si no lo tienes instalado deberás intalararlo para que neovim no te arroje errores al momento de iniciarlo. Por otra parte, si usted ya lo tiene instalado haga caso omiso a este paso y continue con los restantes.

### Paso No. 4. Instalar Node.js.
Node.js es un entorno en tiempo de ejecución multiplataforma, de código abierto, para la capa del servidor basado en el lenguaje de programación JavaScript, en pocas palabras, es un programa el cual permite interpretar o ejecutar códigos de JavaScript sin necesidad de correrlo en el navegador, es por eso que Node.js trae su consola para ejecutar programas .js, pero esto es siempre y cuando valles a trabajar con el lenguaje JavaScript, si tu no lo dominas o no te interesa trabajar con el *pues no lo instales y ya*. Por otra parte si no lo instalas cada vez que habrás neovim te saldrá un aviso en rojo pidiendote que instales Node.js, pero no te preocupes que podrás utilizar neovim sin problema algun. 

Para instalarlo da un [click aquí](https://nodejs.org/es/download/ "https://nodejs.org/es/download/"), este enlace te llevará directamente a su pagina oficial de descargar, si requieres más información de instalación, visualizate un video en **YouTube**.

### Paso No. 5. Descaga los archivos del presente repositorio.
Mira como se ve neovim:
![]()

**¿Te gustaría tener neovim como lo tengo yo?.** Si tu respuesta es **SÍ** deberás descargarte los archivos de este repositorio ya que son necesarios para que Neovim tenga una buena interfaz y tengas las mismas funcionalidad, atajos y plugins que estoy utilizando yo. Una vez se haya descargado debes extraer el .zip; luego, a la carpeta generada debes cambiarle el nombre, te aparecerá así: "nvim-config-windows10-neovim", debes cambiarle ese por: "nvim". Posteriormente, corta o copia esa carpeta y dirigete a la ruta donde se instlao neovim, en mi caso fue:
**C:\Users\Administrador\AppData\Local**, debe ser la misma ruta tuya solo que cambia el nombre de usuario, guíate con ella.

Una vez estes ubicado en el fichero **Local** busca si hay una carpeta con el nombre *nvim-data*, si la encuentras quiere decir que has instalado neovim correctamente. Ahora bien, tambien encontrarás otra carpeta pero con el nombre *nvim*, esa si deberás eliminarla y pegar la que habías cortado anteriormente ya que esa contiene toda la personalización configuración y atajos que yo domino.

Para finalizar con toda la configuración, solo falta una pequeña cosa y es abrir nvim desde la terminal para ellos deberás ubicarte en la ruta de instalación Neovim desde la terminal, la ruta es: **C:\Users\(tu-nombre-de-usuario)\AppData\Local\nvim\**

### Paso No. 6. Abre Neovim
Para abrir neovim debes abrir la terminal instalada, luego ya sea en la pestaña de PowerShell o Simbolo del sistema, debes ubicarte en la ruta donde se está instalado neovim; mi ruta es ¡Deber ser la misma tuya solo que cambia el nombre de usuario!: **C:\Users\Administrador\AppData\Local\nvim**

Cuando estes ahí debes ingresar el siguiente comando y dar enter:
> nvim init.vim

Añado captura de pantalla
![]()

Así se deberá ver tú neovim, cabe mencionar que si deseas cambiar el tema pues solo busca en Youtube como hacerlo.

![]()

![]()

![]()
