<p align="center"><a href="https://twitter.com/Josueromram/" target="_blank">
    <img src="https://github.com/josueromram/nvim-config-windows10/blob/nvim/autoload/Logo%20nvim(1).png">
</a></p>

# Instalación y Configuración de Neovim v0.5.0 para Windows 8, 10 & 11 June, 2021.

## Introducción.
En el presente proyecto se describe el proceso a seguir para personalizar e instalar **NEOVIM** en su versión más reciente 0.5.0 2021, proyecto realizado tras la devaluación e ineficiencia de instalaciones que hay sobre neovim en español para el sistema operativo **Windows 8, 10 y 11**, gran parte de los programadores profesionales utilizan este editor de código muy profesional. Asimismo este estudio de elaboración propia revela la calidad de instalación, configuración y personalización. Para una mejor comprensión del presente informe debe enfocarse y descargar cada una de las herramientas inicializadas a continuación:

## Herramientas necesarias.

1. Instalar **Windows Terminal**
2. Instalar manejador de paquetes **Chocolatey & Neovim**
3. Instalar **Git**
4. Instalar **Node.js**
5. Descargar archivos publicados en **este repositorio**
6. Instalar el gestor de plugins **vim plug**

**Tenga en cuenta que:** para instalar Neovim, si o si necesitarás utilizar todas esas 6 herramientas, para ello aquí conocerás el paso a paso para instalar cada una correctamente sin errores ni falsa información, cabe mensionar que, Windows PowerShell viene instalado de fabrica en el S.O windows, por eso no será necesario explicar el como ejecutarlo, ni instalarlo, ni abrirlo ¡¡eso ya usted debe saberlo!!.

# Paso a paso para la instalación de NeoVim.
### Paso No. 1. Instalar Windows Terminal.
Amiga o amigo para realizar la instalación primero abre Microsft Store o Tienda de Windows; una vez se inicie debes escribir en la barra de busqueda lo siguiente: **windows terminal**, luego de esto, debes seleccionar el programa que se encuentra en la sigguiente captura de pantalla, lo más seguro es que el programa te aparezca de primero.

![](https://pbs.twimg.com/media/E6NZFyyXMAIxUNv?format=jpg&name=large)

Una vez finalice la instalación ejecutalo como administrador porque se necesetirá para ejecutar comandos necesarios, el motivo por el cual recomiendo su instalación es para que neovim tenga una apariencia intuitiva y elegante, tambien podrían usar la **cmd o simbolo del sistema**, pero lo malo es que con esa terminal neovim nunca se verá igual a como en la terminal nueva, si quieres pruebalo, yo utilizo el simbolo del sistema porque quiero.

### Paso No. 2. Instalar Chocolatey & Neovim.
Chocolatey es un gran gestor de paquetes que nos permite instalar programas desde la terminal; si o si debes instalarlo para luego instalar neovim, debes copiar los comandos que te dejo y pegarlos en la terminal recientemente instalada.

Ejecuta este primer comando para conocer el estado de las restricciones de tu computador:
```powershell
   Get-ExecutionPolicy
```  
Luego ejecuta este otro comando, para deshabilitar las restricciones y no cause fallos:
```powershell
   Set-ExecutionPolicy AllSigned
``` 
Y por último añade este comando, ya que define la instalación de **Chocolatey**:
```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
Añado una captura de pantalla, esto es lo que debe devolver el comando utilizado.

![](https://pbs.twimg.com/media/E8ZakdaXsAAwiBY?format=png&name=medium)

Ahora copia y pega este otro comando para instalar neovim en su versión 0.5.0 o la más reciente que haya cuándo la instales.
```powershell
   choco install neovim
``` 
Cuando te salga este mensaje en la terminal: 
> Do you want to run the script?([Y]es/[A]ll - yes to all/[N]o/[P]rint): 

Debes digitar la letra **A** y dar un enter para así aceptar todos los permisos y finalizar con la instalación de Neovim junto al gestor de paquetes Chocolatey.

### Paso No. 3. Instalar Git.
Git es un software de control de versiones diseñado por **Linus Torvalds** quién es él mismo creador del Sistema Operativo **GNU-LINUX**, fue pensado en la eficiencia, la confiabilidad y compatibilidad para mantenimientos de versiones; para realizar la instalación de git da un [click aquí](https://git-scm.com/downloads "https://git-scm.com/downloads"), este es un enlace que te llevará a la pagina oficial de Git. Si no lo tienes instalado deberás intalararlo para que neovim no te arroje errores al momento de iniciarlo. Por otra parte, si usted ya lo tiene instalado haga caso omiso a este paso y continue con los restantes.

### Paso No. 4. Instalar Node.js.
**Node.js** es un entorno en tiempo de ejecución multiplataforma, de código abierto, para la capa del servidor basado en el lenguaje de programación JavaScript, en pocas palabras, es un programa el cual permite interpretar o ejecutar archivos javascript sin necesidad de correrlo en el navegador, es por eso que Node.js integra su consola; pero esto es siempre y cuando valles a trabajar con **JavaScript**, si tu no lo dominas o no te interesa trabajar con el *pues no lo instales y ya*. Por otra parte si no lo instalas cada vez que habrás neovim te saldrá un aviso en rojo pidiendote que instales Node.js, pero no te preocupes que podrás utilizar neovim sin problema algun. 

Para instalarlo da un [click aquí](https://nodejs.org/es/download/ "https://nodejs.org/es/download/"), este enlace te llevará directamente a su pagina oficial de descargar, si requieres más información de instalación, visualizate un video en **YouTube**.

### Paso No. 5. Descarga los archivos de este repositorio.
Esta es la personalización que actualmente tengo en neovim:

![](https://pbs.twimg.com/media/E8yYyhuXoAA2wRP?format=png&name=large)

**¿Te gustaría tener neovim como lo tengo yo?.** Si tu respuesta es **SÍ** deberás descargarte los archivos de este repositorio ya que son necesarios para que Neovim tenga una buena interfaz y las mismas funcionalidades, atajos y plugins que estoy utilizo yo. Una vez se haya descargado debes extraer el .zip; luego, a la carpeta generada debes cambiarle el nombre por:

> nvim

Ahora bien, corta esa carpeta 'nvim' y dirigete a la ruta donde se instlao neovim, en mi caso fue: **C:\Users\Administrador\AppData\Local**, ¡debe ser la misma ruta tuya solo que cambia el nombre de usuario nada más!. Una vez estes ubicado en la carpeta o fichero **Local** revisa si hay una carpeta con el nombre **nvim-data**, si la encuentras quiere decir que has instalado neovim correctamente. Posteriormente, pega la carpeta cortada (nvim) en la carpeta **Local**, esa carpeta contiene toda la personalización, configuración y atajos que yo manejo, para conocer los atajos, abrete y leete el archivo que está dentro de la carpeta **nvim/config/maps.vim**.

Para abrir neovim debes ejecutar un comando sencillo en la terminal PowerShell o Simbolo del sistema, debes ubicarte en la ruta donde se está instalado neovim; mi ruta ¡debe ser la misma tuya solo que cambia el nombre de usuario! como te lo indique anteriormente: **C:\Users\Administrador\AppData\Local\nvim**. Cuando estes ahí debes ingresar el siguiente comando y dar enter:
```powershell
   nvim init.vim
``` 
Luego de ejecutar el comando, te arrojará un error, como lo es este:

![](https://pbs.twimg.com/media/E8yrXozXoAEuT8m?format=png&name=900x900)

Para saltar ese error presiona enter una vez; solo falta intalar el gestor de plugins **vim plug**.

### Paso No. 6. Instalar el gestor de plugins VIM PLUG
**Vim plug** es un administrador de plugins para el editor de texto vim minimalista, de código abierto y gratuito que puede instalar o actualizar complementos en paralelo. Crea clones para minimizar el uso del espacio de disco y el tiempo de descarga; para realizar una descarga limpia y ligera, ejecuta en la terminal PowerShell el siguiente comando:

```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
  ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
``` 

Ese comando creará el archivo **plug.vim** en la ruta: **C:\Users\Administrador\AppData\Local\nvim-data\site\autoload\plug.vim**, que nos permitirá instalar plugins, temas, entre otra cosas, si no ejecutas el comando no podrás personalizar neovim. 

Continuando, añade en neovim el comando:
> :PlugInstall

Así podrás instalar todos los plugins que tengo yo, añado captura de guía.

![](https://pbs.twimg.com/media/E8yrXsvX0AAAO0g?format=png&name=900x900)

Despues, deberás ingresar el comando:
> :qa

Con el podrás cerrar neovim completamente, para luego iniciar neovim con el mismo comando que antes, te hablo exactamente de este comando: **nvim init.vim**. Y con esto se finaliza la instalación, tu neovim se deberá ver como en las capturas que encontrarás debajo; cabe mencionar que si deseas cambiar el tema o otra cosas puedes buscar en Youtube o realizar contacto conmigo vía email, te dejo el correro:
```powershell
josue.romero@uniminuto.edu.co
```

![](https://pbs.twimg.com/media/E8yYyhvXMAIzjcC?format=png&name=900x900)

![](https://pbs.twimg.com/media/E8yYykBXEAMvB7f?format=png&name=900x900)

###### ¿Puedes comentarme que tal te pareció esta guía de instalación?
