---
layout: "post"
title: "Conectando datos"
quote: "[Recomendación de lectura] La evolución de datos estructurados y Schema.org."
image: "false"
image: "/media/2017-02-15-schema-dot-org/portada.jpg"
comments: "true"
---

Cuando estuve trabajando con Open Data una de las inquietudes que prevalició en la publicación de datos abiertos es la 
creación de datos estructurados y que puedan ser descritos para encontrar relaciones. 
De hecho, desde que se creó la Web Tim Berners Lee tenía la visión de hacer un sistema en donde se pudiera manejar información interconectada. 
No se refería exclusivamente a documentos sino también se refería a recursos físicos como equipamiento, máquinas. 
Se refirió también a personas y a sus habilidades como parte de un sistema que tiene información ligada. 
En su conjunto lo que creó dentro del CERN fue un sitema para lidiar con la pérdida de información en un sistema que evoluciona complejamente,
La solución derivó en un sistema distribuido de hipertexto. 
Pueden ver a detalle la solución propuesta en [Information Management: A Proposal (1989)](https://www.w3.org/History/1989/proposal.html).

{% include image.html url="/media/2017-02-15-schema-dot-org/the-web.png" width="100%" description="The Web as a Distributed System Figure 2 from Information Management: A Proposal (1989)" %}

El Consorcio de la WWW [(W3C)](http://www.w3c.org) describe las mejores prácticas para publicar datos estructurados en la Web en su [wiki](https://www.w3.org/wiki/LinkedData). 
Un sitio contribuido comunmente usado en la comunidad de Open Data es [5 &#9734; Open Data ](http://5stardata.info/) que incluye una aproximación a 
través de [RDF](https://www.w3.org/RDF/) y el [Linked Data](https://www.w3.org/standards/semanticweb/data). 

Les recomiendo este artículo de [Communications of the ACM](http://cacm.acm.org/) donde discuten varias aproximaciones que ha habido a la 
creación de datos estructurados en documentos HTML.
Hay algo que me parece interesante es que el uso de software como Wordpress y Drupal ha ayudado a la creación de 
información estructurada porque hay distribuciones o plugins que lo incluyen por defecto.
Algunos conceptos que mencionan y que hemos probablemente visto son los formatos vCard, hCalendar. 
Esta información ayuda a los asistentes personales como Siri, Google Now a encontrar información de manera más fácil. 
O permite a nuestros teléfono inteligentes acciones como guardar una vCard en tus contactos o agregar una cita en tu calendario en formato hCalendar.
Ojalá puedan leerlo y comentar sobre si lo han usado o cuál sería la siguiente manera de utilizarlo en sus sitios.
Pueden ver alguno vocabularios definidos sobre como describir una [receta de cocina](http://schema.org/Recipe), un [negocio](http://schema.org/LocalBusiness),
un [hotel y sus variantes](http://schema.org/docs/hotels.html).

Se me ocurren muchas cosas con comida, me he dado cuenta que foursquare-Swarm es pésimo para encontrar comida mexicana de manera específica. 
Crear vocabularios y un sistema más especializado probablemente nos podría ayudar a encontrar mejor información 
sobre qué visitar en México para comer. 

{% include image.html url="/media/2017-02-15-schema-dot-org/diningcode.jpg" width="50%" left="25%" description="Aplicación de Android Dining Code(다이닝코드)" %}

Algo que me gusta de Corea es la manera en que hay servicios acoplados a sus necesidades y a su cultura.
Tal vez en otra ocasión podamos hacer un overview de  [Dining Code](http://www.diningcode.co.kr/) que es una aplicación
que te ayuda a encontrar lugares en Corea para comer a través de reviews de blogs, comentarios y platillos. 
Es algo que me gusta, pues para los usuarios de una app el cielo y el infierno está en los detalles.

El artículo lo pueden encontrar en: [Schema.org: Evolution of Structured Data on the Web](http://cacm.acm.org/magazines/2016/2/197422-schema-org/fulltext)

Photo: [Flickr/melancholija](https://www.flickr.com/photos/melancholija/8067666973/)
