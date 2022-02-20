# ejercicios-bash-scripts
Ejercicios resueltos de bashScripts.

## Actividades iniciales

* 101- Crea un shell script que muestre por pantalla el mensaje “¡Hola Mundo!”.

* 102- Realiza un shell script que admita un único parámetro correspondiente al nombre de un fichero de texto. Mostrará por pantalla el número de líneas del mismo utilizando el comando wc.

* 103- Crea un shell script que muestre por pantalla el resultado de de las siguientes operaciones. Debes tener en cuenta que a, b y c son variables enteras que son preguntadas al usuario al iniciar el script.

  - a%b
  - a/c
  - 2 * b + 3 * (a-c)
  - a * (b/c)
  - (a*c)%b
  
## Actividades de desarrollo UD1_01¶

* 104- Modifica el shell script realizado en el ejercicio 102 para comprobar si el fichero existe. En tal caso debe contar el número de líneas del mismo a través del comando wc y mostrar un mensaje indicando dicho número. Si el fichero no existe, debe mostrar un mensaje de error y salir.

* 105- Crea un shell script que al ejecutarlo muestre por pantalla uno de estos mensajes “Buenos días”, “Buenas tardes” o “Buenas noches”, en función de la hora que sea en el sistema (de 8:00 de la mañana a 15:00 será mañana, de 15:00 a 20:00 será tarde y el resto será noche). Para obtener la hora del sistema utiliza el comando date.

* 106- Construye un programa denominado AGENDA que permita mediante un menú, el mantenimiento de un pequeño archivo lista.txt con el nombre, dirección y teléfono de varias personas. Debes incluir estas opciones al programa:

  - Añadir (añadir un registro)
  - Buscar (buscar entradas por nombre, dirección o teléfono)
  - Listar (visualizar todo el archivo).
  - Ordenar (ordenar los registros alfabéticamente).
  - Borrar (borrar el archivo).
  
* 107- Crea un shell script que sume los números del 1 al 1000 mediante una estructura for, while y until.

## Actividades de desarrollo UD1_02¶

* 108- Construye los siguientes dos shell script utilizando estructuras iterativas:

  - A.  el primero ej108A.sh, que pida un número e indique si se trata de un número par y si es número primo.
  - B.  el tercero ej108B.sh, que muestre las 10 primeras tablas de multiplicar por pantalla. Existirá un tiempo de espera de dos segundos entre tabla (usa el comando sleep para ello).
