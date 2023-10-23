#!/usr/bin/env node

const fs = require("fs");
const path = require("path");
const argumentos = process.argv;
const [ argumento1, argumento2, argumento3 ] = argumentos;
const fichero = path.resolve(argumento3);
console.log("[*] Fichero de entrada:");
console.log("[*]  - " + fichero);
const fichero_contenido = fs.readFileSync(fichero).toString();
const fichero_novelator_parser = path.resolve(__dirname, "novelator.js");
const novelator_parser = require(fichero_novelator_parser);
try {
    const fichero_novela_a_json_contenido = novelator_parser.parse(fichero_contenido);
    const fichero_novela_a_json = fichero.replace(/\.nvl$/g, ".json" );
    fs.writeFileSync(fichero_novela_a_json, JSON.stringify(fichero_novela_a_json_contenido, null, 4), "utf8");
    console.log("[*] Fichero pasado a JSON exitosamente en:");
    console.log("[*]  - " + fichero_novela_a_json);
} catch(error) {
    console.log(error);
}