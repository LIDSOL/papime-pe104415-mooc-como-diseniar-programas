# Video 2

_Imágenes y música de inicio_

_Todos los ejemplos se ejecutarán en la sección de interacción de Dr.Racket, cada nueva línea es una expresión a ejecutar_

**Instructor:**
Hola a todos, bienvenidos de vuelta al curso Cómo diseñar programas.

En esta sesión hablaremos sobre los conceptos de aritmética, función y como usarlos para diseñar programas en el lenguaje Racket.

Comencemos con la aritmética, que es la parte de las matemáticas que estudia los numeros y las operaciones más basicas que pueden realizarse con ellos.

La aritmética forma parte de cualquier lenguaje de programación, como Racket. Sin embargo, Racket tiene una notacion distinta para las operaciones básicas como suma, resta multiplicación y división.

_Se muestra y evalua el ejemplo 1_

En Racket se usa una notación polaca o prefija para representar cualquier operación, esto quiere decir que primero se escribe la operación que se realizará y posterior se escriben los operandos. Además cualquier operación se debe escribir entre paréntesis.

**Ejemplo 1**

```racket
(+ 1 1)
(* 2 2)
```

_Se muestra y evalúa el ejemplo 2_

Esto parece no tener mayores implicaciones, pero nota que en operaciones no conmutativas, como la resta o la división, debes tener especial cuidado con el orden de los operandos. No es lo mismo 4 entre 2, que 2 entre 4.

**Ejemplo 2**

```racket
(/ 4 2)
(/ 2 4)
```

En Racket es posible realizar estas y muchas otras operaciones matemáticas usando números, pero si generalizamos este conocimiento, podríamos realizar operaciones con cosas ¡como palabras!, ¡o imágenes¡.

_Se muestra y evalúa el ejemplo 3_

En Racket representamos palabras escribiéndolas entre comillas dobles y las llamamos cadenas, en inglés _strings_.

**Ejemplo 3**

```racket
"¡Hola mundo!"
```

_Se muestra y evalúa el ejemplo 4_

Si quisiéramos realizar una operación como "sumar" cadenas podriamos a usar la operación _string-append_ que une cadenas una tras otra y que Racket ya sabe como realizar.

**Ejemplo 4**

```racket
(string-append "¡Hola " "mundo!")
```

Siempre recuerda escribir cada operacion entre su propio par de paréntesis.

Se pueden realizar otras operaciones con cadenas, como cortarlas, buscar en ellas, volverlas mayúsculas o minúsculas, etc. para ver todas las operaciones que Racket sabe hacer, puedes revisar la documentación (en inglés) en el sitio web del proyecto Racket.

_Se muestra y evalúa el ejemplo 5_

Además de estas operaciones matemáticas Racket puede realizar operaciones lógicas, como determinar si dos operandos son iguales, o uno es mayor o menor que otro. Nuevamente estas operaciones no se limitan a números. Podemos usarlas también en cadenas.

**Ejemplo 5**

```racket
(> 5 1)
(> 1 5)
(= 4 4)
(>= 5 4)
(string=? "Hola" "hola")
```
Como puedes ver las operaciones lógicas no dan como resultado de su evaluación números o cadenas, sino un valor `#true` o `#false`, cierto o falso, que son valores lógicos.

_Se muestra y evalúa el ejemplo 6_

Otras operaciones lógicas son `and` y `or`, la conjunción y la disyunción lógica. La conjunción tiene como resultado cierto o `#true` si ambos operandos son verdaderos, y falso, `#false`, en otro caso, y la disyunción da como resultado `#true` si alguno o ambos operandos son `#true`, y `#false` en caso de que ambos operandos sean falsos.

**Ejemplo 6**

```racket
(and #true #true)
(and #true #false)
(or #true #false)
(or #false #false)
```

_Pausa Corta, limpiar el área de interacción_

Si haz estado realizando estos ejemplos, seguramente en algún momento quisiste ocupar el resultado de alguna operación para realizar otra o hacer algo más complicado como averiguar si la longitud de una palabra es mayor a 7.

_Se muestra el ejemplo 7, pero no se evalua_

Para hacer esto debeemos indicar en orden las operaciones que queremos realizar, para esto sirven los parentesis, cuando en tus cursos de matematicas querías realizar una operación antes que otra, envolvías la primera en paréntesis. Así se evalúan primero los paréntesis más interiores y su resultado es sustituido en la operación que sigue.

**Ejemplo 7**

[comment]: # (probablemente esto si debería de ir en una diapositiva)

```
((5 + (20 + (4 * 2))) / 3)
               ^
   ((5 + (20 + 8)) / 3)
             ^
       ((5 + 28) / 3)
          ^
        (33 / 3)
            ^
           11
```

Racket funciona de la misma forma, sólo que usando la notación prefija de la que hablamos anteriormente. La expresion del ejemplo anterior se escribe de la siguiente forma en Racket.

_Se muestra y evalúa, escribiendo de forma lenta el ejemplo 8, cada nueva línea en el ejemplo es para enfatizar lo que se hace en cada paso y no debe ser evaluada_

Abrimos paréntesis y escribimos la última de las operaciones a realizar, en este caso la división, si uno de los operandos es el resultado de otra operación ponemos un par de paréntesis vacíos, escribimos a lado el segundo operando y cerramos paréntesis.

Ahora regresamos a los parentesis vacíos y escribimos la operación que haga falta, repitiendo el mismo proceso.

**Ejemplo 8**

```racket
(/ () 3)
(/ (+ 5 () 3)
(/ (+ 5 (+ 20 ()) 3)
(/ (+ 5 (+ 20 (* 4 2)) 3)
```

_Se muestra el ejemplo 9_

Cuando queremos realizar la misma operción en muchos números Racket nos permite enviar todos los numeros a la operación sin necesidad de escribir la operacion varias veces.

**Ejemplo 9**
```racket
(+ 1 (+2 (+ 3 (+ 4 5))))
(+ 1 2 3 4 5)
(- 10 5 4 1)
(/ 1 2 3)
(string-append "¡" "Hola" " " "mundo" "!")
```

Ahora sí podemos crear operaciones más complejas, como saber si langitud de una cadena es mayor a 7 caracteres.

_Se describe de forma lenta, pausada y clara (pero no aburrida por favor :v ponganle entusiasmo, le estan abriendo los ojos a la gente alv xdd)_

Analicemos este problema, necesitamos saber si la longitud de una cadena es mayor a 7 caracteres, el único dato que tenemos es la cadena, supongamos `"programa"`, nosotros sabemos que "programa" tiene más de 7 caracteres, pero... ¿cómo lo supimos? ¿y cómo se lo explicamos a Dr. Racket para que él lo haga?

_Se muestra la primer línea del ejemplo 10_

Primero contamos las letras, una operación que toma una palabra, o cadena, y a partir de ella genera ¡un número!

_Se muestra la segunda línea del ejemplo 10, escribiendo lento_

Después tomamos ese número y lo comparamos con otro número, determinamos si era mayor que 7, una operación que tomó 2 números como entrada, el 7 y la cantidad de caracteres y devolvió un valor lógico.

*Ejemplo 10*

```racket
(string-length "programa")
(> 7 (string-length "programa"))
```

Y este par de operaciones las realizamos casi sin mirar.

Nota, por favor, como pasamos de una cadena, a un número y por último a un valor de verdad. Los datos que conociamos de nuestro problema se fueron transformando.

Tener claros los datos, sus transformaciones a lo largo de un problema, y analizar el problema paso a paso, nos permitirá diseñar mejores programas, y nos ayudará a resolver problemas complicados no sólo usando un lenguaje de pogramación, sino también en nuestro día a día.
