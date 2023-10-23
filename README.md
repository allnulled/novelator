# novelator

Lenguaje para escribir novelas y pasarlas a un JSON.

## Editor en línea

Puedes probarlo ya en la aplicación:

- [https://allnulled.github.io/novelator/editor.html](https://allnulled.github.io/novelator/editor.html)

También puedes probar el motor básico en la aplicación:

- [https://allnulled.github.io/novelator/motor.html](https://allnulled.github.io/novelator/motor.html)

## Instalación

```sh
npm install --save novelator
```

## Uso

Una vez instalado, puedes usarlo así desde consola:

```sh
./node_modules/.bin/novelator novela.nvl
```

Esto producirá automáticamente un fichero JSON llamado `novela.json`, o imprimirá el error de sintaxis pertinente.

## Sintaxis

Para escribir novelas, tienes las siguientes sentencias que puedes ir concatenando con saltos de línea.

### Sentencia de diálogo

Cuando solo habla 1 personaje, se escribe así:

`<Personaje> dice: cosas que dice el personaje.`

Cuando hablan varios personajes a la vez, se escribe así:

`<Personaje 1> y <Personaje 2> y <Personaje 3> dicen: cosas que dicen estos personajes.`

Para escribir un monólogo de múltiples líneas, se escribe así:

```
<Personaje 1> dice:
Esto es un monólogo.
Puedes usar múltiples líneas.
Sin embargo, cuando hagas 2 saltos de línea juntos, estarás terminando el monólogo.

<Personaje 2> dice: esto ya forma parte de la siguiente intervención.
```

### Sentencia de acción

Cuando solo actúa 1 personaje, se escribe así:

`<Personaje> hace lo que sea.`

`<Personaje> se mueve.`

`<Personaje> se queda quieto.`

`<Personaje> piensa.`

Cuando lo hacen varios personajes, se escribe así:

`<Personaje 1> y <Personaje 2> hacen lo que sea.`

`<Personaje 1> y <Personaje 2> callan.`

Para escribir una acción de múltiples líneas, se escribe así:
```
<Personaje 1>
Esto es una acción de múltiples líneas.
Puedes usar múltiples líneas.
Sin embargo, cuando hagas 2 saltos de línea juntos, estarás terminando esta acción.

<Personaje 2> hace otra cosa.
```

### Sentencia de cambio de fondo

Para cambiar de fondo se escribe así:

`Cambio de fondo: nueva_imagen_de_fondo.png`

### Sentencia de cambio de escena

Para cambiar de escena se escribe así:

`Cambio de escena: Título de la nueva escena`

### Sentencia de cambio de capítulo

Para cambiar de capítulo se escribe así:

`Cambio de capítulo: Título del nuevo capítulo`

## Uso como API

Para usarlo como API, tienes dos opciones.

### Opción 1. API para Node.js.

```js
const Novelator_parser = require("novelator");
Novelator_parser.parse(texto_novelator);
```

### Opción 2. API para navegadores.

```html
<script src="node_modules/novelator/docs/lib/novelator.js"></script>
<script>
Novelator_parser.parse(texto_novelator);
</script>
```

## ¿Qué más?

Bueno. Con esto te aseguras que tu novela puede ser pasada a formato JSON. Ya está, luego con el JSON puedes hacer muchas cosas.



