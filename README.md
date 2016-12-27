# Cells Autoresizing

Este proyecto fue creado para poder manejar las vistas mediante el concepto de "Cards".

Manejamos una division de la Card en tres partes: Header, Center y Footer. Esta implementacion se basa en que cada seccion pude contener cualquier tipo de vista custom, manejando diferentes tamaños, 
layout, contenido, etc.

# Librerias utilizadas

* Masonry: Libreria utilizada para manejar las constraints de forma facil
* SDWebImage: Libreria para descargar imagenes de forma correcta. 

# Implementacion

Este proyecto maneja una implementacion generica para celdas dinamicas en tamaño. En especial manejamos 2 tipos diferentes de implementaciones:

## 1 - Custom TableViewCell.

Se crea una tabla con 3 contenedores (header, center y footer).
En esta celda se crean metodos para agregar las vistas a estos 3 subviews de la celda padre y con los constraints bien definidos se ajustan los tamaños de las celdas acorde requerimientos y contenidos.

## 2 - ContentView agregada a TableViewCell.

Esta implementacion se genera una View llamada ContentView la cual tiene las 3 secciones implementadas.
Se agregan las secciones programaticalmente usando Masonry, la cual nos permite agregar los constraint facilmente.

# Examples:

## Simple Example.

  Este ejemplo esta hecho mediante la implementacion 1.
  
## Simple News example.

  Este ejemplo esta hecho mediante la implementacion 2.

## Dynamic News Example.
  
  Este ejemplo esta hecho mediante la implementacion 2.
  
  Este ejemplo maneja varios tipos de contenidos, como videos, imagenes y textos.
  
  Se maneja un header estatico con logo y titulo, como tambien un footer estatico con tres divisiones.
  
  Lo interesante es el centro de la vista, la cual se ajusta a diferentes layouts y contenidos, haciendo dinamico el heigth de la celda.
  
## Team Example.

  Este ejemplo esta hecho mediante la implementacion 2.

## Players Example.

  Este ejemplo esta hecho mediante la implementacion 2.
