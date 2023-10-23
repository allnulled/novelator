# novelator

Lenguaje para escribir novelas y pasarlas a un JSON.

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

### Sentencia de acción

Cuando solo actúa 1 personaje, se escribe así:

`<Personaje> hace lo que sea.`

`<Personaje> se mueve.`

`<Personaje> se queda quieto.`

`<Personaje> piensa.`

Cuando lo hacen varios personajes, se escribe así:

`<Personaje 1> y <Personaje 2> hacen lo que sea.`

`<Personaje 1> y <Personaje 2> callan.`

### Sentencia de cambio de escena

Para cambiar de escena se escribe así:

`Cambio de escena: Título de la nueva escena`

### Sentencia de cambio de capítulo

Para cambiar de capítulo se escribe así:

`Cambio de capítulo: Título del nuevo capítulo`

## ¿Qué más?

Bueno. Con esto te aseguras que tu novela puede ser pasada a formato JSON. Ya está, luego con el JSON puedes hacer muchas cosas.



