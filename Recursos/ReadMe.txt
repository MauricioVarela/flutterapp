Para la aplicaion Móbil

Flutter:
pre condiciones.

 Para esto la ayuda de el comando flutter doctor sera importante
este comando nos mostrara algo como esto si esta todo bien instalado,
sin embargo si no lo esta en vez de un √ nos aparecera una x teniendo que instalar las dependencias que nos diga la terminal para que corra flutter.

[√] Flutter (Channel stable, 3.0.1, on Microsoft Windows [Versi¢n 10.0.19044.1766], locale es-CL)
[√] Android toolchain - develop for Android devices (Android SDK version 32.0.0)
[√] Chrome - develop for the web
[√] Visual Studio - develop for Windows (Visual Studio Community 2022 17.2.2)
[√] Android Studio (version 2020.3)
[√] VS Code (version 1.68.1)
[√] Connected device (4 available)
[√] HTTP Host Availability

Para la Api Rest:
Necesitaremos...
Django 

En ese caso tendremos que instalar python con la version 3.10 sera suficiente
para instalarlo necesitamos ir a la pagina oficial de python " https://www.python.org/downloads/" en donde descargaremos el ejecutable
añadiendo la instalcion al path con el checkbox "Add path"

lo siguiente es verificar si python y pip se instalo correctamente esto se hace abriendo el cmd
y lo verificamos escribiendo python en el cmd y hacemos lo mismo con pip 
el comando pip nos sera de mucha ayuda ya que con el instalaremos django
entonce escribimos en el cmd "pip install django" luego lo verificamos 
con el comando "python -m django --version" y ya esta instalado

ahora para la creacion de un proyecto escribimos

creamos una carpeta como por ejemplo APIDJANGO una vez creada entramos a la carpeta 
y en la barra de direcciones escribimos "cmd" ejemplo "django-admin startproject proyecto1"
esto nos crea la estructura principal de django entrando a la estructura del proyecto con 
visual studio code abrimos una nueva terminal y escribimos "python manage.py runserver"
esto nos aloja el proyecto en el servidor de django y para verificar ello django nos da
una ip ejemplo "http://127.0.0.1:8000" la cual con Ctrl + click izquierdo se abrira la pagina de django 

Luego para la pagina web realizada con PHP:

Nos encontramos con la descarga de xampp
la cual una vez instalada la abriremos y habilitaremos Apache y MySQL escribiendo haciendo click en Start
para luego dirigirse a "C:\xampp\htdocs" y dejar la pagina en esa carpeta para luego en xampp hacemos click en admin nos lleva a la pagina de xampp y eliminamos la palabra dashboard y escribimos el nombre de la carpeta que aloja nuestra pagina web por ejemplo "http://localhost/projecto1/"
y para la base de datos basta con escribir en el browser "http://localhost/phpmyadmin/" y damos enter