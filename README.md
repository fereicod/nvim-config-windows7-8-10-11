<H1 align="center">Instalación y Configuración de Neovim v0.5.0 para Windows 8.1, 10 & 11 June, 2021.</H1>

<p align="center" width="0">
   <img align="center" width="700" src="https://github.com/josueromram/nvim-config-windows10/blob/nvim/projects/neovim-logo.png">
</p>

## Introducción.
En el presente proyecto se describe el proceso a seguir para personalizar e instalar **NEOVIM** en su versión más reciente 0.5.0 2021, proyecto realizado tras la devaluación e ineficiencia de instalaciones que hay sobre neovim en español para el sistema operativo **Windows 8.1, 10 y 11**, gran parte de los programadores profesionales utilizan este editor de código muy profesional. Asimismo este estudio de elaboración propia revela la calidad de instalación, configuración y personalización. Para una mejor comprensión del presente informe debe enfocarse y descargar cada una de las herramientas inicializadas a continuación:

## Herramientas necesarias.

1. Instalar **Windows Terminal**
2. Instalar manejador de paquetes **Chocolatey & Neovim**
3. Instalar **Git**
4. Instalar **Node.js**
5. Descargar archivos publicados en **este repositorio**
6. Instalar el gestor de plugins **vim plug**

**Tenga en cuenta que:** para instalar Neovim, si o si necesitarás utilizar todas esas 6 herramientas, para ello aquí conocerás el paso a paso para instalar cada una correctamente sin errores ni falsa información, cabe mensionar que, *Windows PowerShell* viene instalado de fabrica en el SO Windows, por eso no será necesario explicar el como ejecutarlo, ni instalarlo, ni abrirlo ¡eso ya debes de saberlo! y si no mira un video o investiga.

# Paso a paso para la instalación de NeoVim.
### Paso No. 1. Instalar Windows Terminal.
Amiga o amigo para realizar la instalación primero abre Microsft Store o Tienda de Windows; una vez se inicie debes escribir en la barra de busqueda lo siguiente: **terminal**, luego de esto, debes seleccionar el programa que se encuentra en la siguiente captura de pantalla, lo más seguro es que el programa te aparezca de primero como me sucedió.

![Windows Terminal](https://github.com/josueromram/nvim-config-windows7-8-10-11/blob/nvim/screenshot/win-terminal.png)

Una vez finalice la instalación ejecutala como administrador porque deberás ejecutar una serie de comandos, el motivo por el cual recomiendo su instalación es para que neovim tenga una apariencia intuitiva y elegante, tambien podrían usar la ***cmd o simbolo del sistema***, pero lo malo es que con esa terminal neovim nunca se verá igual a como en la terminal nueva, si quieres pruebalo, yo utilizo las dos terminales.

### Paso No. 2. Instalar Chocolatey & Neovim.
Chocolatey es un gran gestor de paquetes que nos permite instalar programas desde la terminal; si o si debes instalarlo para luego instalar neovim, debes copiar los comandos que te dejo y pegarlos en la terminal recientemente instalada.

Ejecuta este primer comando para conocer el estado de las restricciones de tu computador:
```powershell
   Get-ExecutionPolicy
```  
Luego ejecuta este otro comando, para deshabilitar las restricciones y no se presenten fallos:
```powershell
   Set-ExecutionPolicy AllSigned
``` 
Y por último añade este comando, ya que contiene la instalación de **Chocolatey**:
```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
Añado una captura de pantalla, a mi me arroja estos errores porque ya lo tengo instalado correctamente, tu solo debes seguir los protocolos que te indíco.

![Instalación de Chocolatey](https://github.com/josueromram/nvim-config-windows7-8-10-11/blob/nvim/screenshot/chocolatey.png)

Ahora copia y pega este otro comando para instalar neovim en su versión 0.5.0 o la más reciente que haya a la fecha de tu instalación.
```powershell
   choco install neovim
``` 
Cuando te salga este mensaje en la terminal: 
> Do you want to run the script?([Y]es/[A]ll - yes to all/[N]o/[P]rint): 

Debes digitar la letra **A** y dar un enter para así aceptar los terminos y condiciones requeridos, con la instalación de **Neovim** junto al gestor de paquetes **Chocolatey** hemos terminado el segundo paso.

### Paso No. 3. Instalar Git.
Git es un software de control de versiones diseñado por **Linus Torvalds** quién es él mismo creador del Sistema Operativo **GNU-LINUX**, fue pensado en la eficiencia, la confiabilidad y compatibilidad para mantenimientos de versiones; para realizar la instalación de git da un [click aquí](https://git-scm.com/downloads "https://git-scm.com/downloads"), este es un enlace que te llevará a la pagina oficial de Git. Si no lo tienes instalado deberás intalararlo para que neovim no te arroje errores al momento de iniciarlo. Por otra parte, si usted ya lo tiene instalado haga caso omiso a este paso y continue con los restantes.

### Paso No. 4. Instalar Node.js.
**Node.js** es un entorno en tiempo de ejecución multiplataforma, de código abierto, para la capa del servidor basado en el lenguaje de programación JavaScript, en pocas palabras, es un programa el cual permite interpretar o ejecutar archivos javascript sin necesidad de correrlo en el navegador, es por eso que Node.js integra su consola; pero esto es siempre y cuando valles a trabajar con **JavaScript**, si tu no lo dominas o no te interesa trabajar con el *"pues no lo instales y ya"*. Por otra parte si no lo instalas cada vez que habrás neovim te saldrá un aviso en rojo pidiendote que instales Node.js, pero no te preocupes que podrás utilizar neovim sin problema algun. 

Para instalarlo da un [click aquí](https://nodejs.org/es/download/ "https://nodejs.org/es/download/"), este enlace te llevará directamente a su pagina oficial de descargar, si requieres más información de instalación, visualizate un video en **YouTube**.

### Paso No. 5. Descarga los archivos de este repositorio.
Esta es la personalización que actualmente tengo en neovim:

![Neovim Josué Romero](https://github.com/josueromram/nvim-config-windows7-8-10-11/blob/nvim/screenshot/nvim-completo.png)

**¿Te gustaría tener neovim como lo tengo yo?.** Si tu respuesta es **SÍ** deberás descargarte los archivos publicados en este repositorio ya que son necesarios para que tu Neovim tenga una buena interfaz y las mismas funcionalidades que manejo, atajos y plugins. Una vez se haya descargado debes extraer el .zip. Luego, a la carpeta generada debes cambiarle el nombre por:

> nvim

Ahora bien, corta esa carpeta *nvim* y dirigete a la ruta donde se instlao neovim, en mi caso fue: **C:\Users\Administrador\AppData\Local**, ¡será la misma ruta tuya solo que cambia el nombre de usuario nada más!. Una vez estes ubicado en la carpeta o fichero **Local** revisa si hay una carpeta con el nombre **nvim-data**, si la encuentras quiere decir que has instalado neovim correctamente. Posteriormente, pega la carpeta cortada ***nvim*** en la carpeta **Local**, esa carpeta contiene toda la personalización, configuración, atajos y plugins que utilizo, para conocer los atajos, abrete y leete el archivo que se llana **guía-atajos-neovim.md**.

Para abrir neovim debes ejecutar un comando sencillo en la terminal PowerShell o Simbolo del sistema, debes ubicarte en la ruta donde está instalado neovim. La ruta es ¡la misma tuya mía solo que cambia el nombre de usuario y debes entrar a carpeta nvim! **C:\Users\Administrador\AppData\Local\nvim**. Cuando estes ahí debes ingresar el siguiente comando y presionar enter:

```powershell
   nvim init.vim
``` 

Añado captura de pantalla:

![nvim init.vim](https://github.com/josueromram/nvim-config-windows7-8-10-11/blob/nvim/screenshot/init-vim.png)

Luego de ejecutar el comando, te arrojará muchos errores que son normales la primera vez, aparecen porque los plugins no se han instalado, deben ser estos mismos errores:

![Errores normales](https://github.com/josueromram/nvim-config-windows7-8-10-11/blob/nvim/screenshot/errores-normales.png)

Para saltar esos errores debes presionar 22 veces la tecla enter y, nada más faltaría instalar el gestor de plugins **vim plug** para que así culmines con el paso 5.

### Paso No. 6. Instalar el gestor de plugins VIM PLUG
**Vim plug** es un administrador de plugins para el editor de texto vim y neovim minimalista, de código abierto creado por **junegunn** y gratuito que puede instalar y actualizar complementos en paralelo. Crea clones para minimizar el uso de espacio del disco y el tiempo de descarga; para realizar una descarga limpia y ligera, ejecuta en la terminal nueva, en la pestaña PowerShell ejecutada como administrador el siguiente comando:

```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
  ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
``` 

Ese comando creará el archivo **plug.vim** en la ruta: **C:\Users\Administrador\AppData\Local\nvim-data\site\autoload\plug.vim**, que nos permitirá instalar los plugins y temas, si no ejecutas el comando no podrás cambiarle la interfaz a neovim como lo tenfgo yo. 

Continuando, escribe el comando, recuerda que debes estar en modo **NORMAL:**
> :PlugInstall

Anado captura de pantalla:
![:PlugInstall](https://github.com/josueromram/nvim-config-windows7-8-10-11/blob/nvim/screenshot/pluginstall.png)

Así podrás instalar todos los plugins que manejo a diario, añado captura de guía.

![Complementos instalados](https://github.com/josueromram/nvim-config-windows7-8-10-11/blob/nvim/screenshot/plugins-instalados.png)

Despues de que hayan terminado todas las descargas y quieras conocer los cambios efectuados, presiona las teclas espacio + x en modo **NORMAL:**
> space + x

El comando cerrará neovim completamente. Para que luego, abras de nuevo neovim. ¡si no recuerdas como abrirlo! debes ingresar el siguiente comandos en la misma ruta: **nvim init.vim**. En terminos generales, veráz el cambio en neovim justo como en las imagenes; cabe mencionar que si deseas cambiar el tema o otra cosas puedes buscar en Youtube o realizar contacto vía e-mail conmigo, comparto mi correo:

```powershell
josueromram@outlook.es
```

![init.vim](https://github.com/josueromram/nvim-config-windows7-8-10-11/blob/nvim/screenshot/nvim-init-vim.png)

![Sintaxi con ligaduras](https://github.com/josueromram/nvim-config-windows7-8-10-11/blob/nvim/screenshot/nvim-nerdtree_java.png)

###### ¿Puedes comentarme que tal te pareció esta guía de instalación?

<p align="center" width="0">
   <img align="center" width="200" src="https://github.com/josueromram/nvim-config-windows10/blob/nvim/projects/neovim-logo-flat.png">
</p>
<p align="right" width="0">
   <img align="center" width="50" src="https://github.com/josueromram/josueromram/blob/ProjectsApacheNetbeans12.4/Perfil%20Circular.png">
</p>
