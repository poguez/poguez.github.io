---
layout: post
title: "Comparando tecnologías para crear servicios web: SOA, REST y GraphQL"
quote: "¿Qué opciones tengo para hacerlo?"
image: false
image: "/media/2017-11-30-comparando-tecnologias-de-servicios-web/portada.jpg"
comments: true
---

# Quiero crear un Servicio Web, ¿cuáles son mis opciones?

Hace un par de meses nos planteábamos una pregunta por la que más de un desarrollador ha pasado:
¿cuáles son mis opciones para crear un servicio web o web API?. 
Investigué y presenté en [Devnights Summer edition 2016](https://www.meetup.com/es/DevNightsMX/events/241391717/).
Ya sé, ya han pasado varios meses desde entonces, pero _**sharing is caring**_.

Regularmente nos pasa que al llegar al mundo de programación web aprendemos a hacer servicios con el modelo [REST (Represtational State Transfer)](https://en.wikipedia.org/wiki/Representational_state_transfer).
Regularmente llegamos a frameworks opinados donde las decisiones técnicas sobre el diseño ya se han tomado y REST está 
ahí por defecto.
En mi caso yo inicié con Ruby on Rails, donde REST viene por defecto. 
Algunos otros ejemplos  donde tú podrías haber empezado así son: Django REST Framework, Play, Zend, Yii, Laravel, Sails,
entre otros. De haber sido así, es casi seguro que empezaste haciendo REST.

Cuando eres un programador novato -o Junior como le dicen los reclutadores- tu base de conocimiento todo el tiempo cambia.
Y probablemente entre que aprendemos el framework y creamos nuestra primera aplicación suele suceder que llegamos a otras
soluciones  para hacer servicios que nos parecen horribles y poco intuitivas.
Parecen crípticas porque incluso están hechas con XML, un lenguaje de descripción que te han contado que se hizo 
hace mil años.
Te toca llegar a servicios web que tienen otro estilo arquitectónico y otras descripciones que no habías visto.
Por ejemplo, te mandan una descripción de un servicio en [WSDL (Web Services Description Language)](https://www.w3.org/TR/2007/REC-wsdl20-20070626/) y no sabes cómo usarla.
Te mandan un _endpoint_ que te regresa un XML para que uses [SOAP (Simple Object Access Protocol)](https://www.w3.org/TR/soap) y tampoco sabes cómo se describen los datos.
Incluso hay la posibilidad de que te manden el _endpoint_ para consultar un directorio de servicios [UDDI (Universal Description, Discovery, and Integration)](https://www.oasis-open.org/committees/uddi-spec/).
Es horrible pasar de un paradigma como REST donde los elementos se describen en la URL a uno en el que tienes
que hacerlo con XML.
Usualmente asociamos estas tecnologías a Java, .NET o a soluciones enterprise y piensas que son complicadas.
Es verdad, pueden ser complicadas pero solucionan problemas específicos.

En esta presentación exploramos sobre qué son los servicios, qué son los servicios web.
Recordamos que la arquitectura oficial de la Web es SOA.
Listamos las principales tecnologías SOA para hacer servicios: SOAP, WSDL y UDDI.
Dimos un repaso de REST y sus principales componentes de diseño. 
También exploramos una de las opciones más innovadoras y nuevas que es: GraphQL.
La innovación de GraphQL que es más que una propuesta arquitectónica para hacer servicios. 
GraphQL también es un lenguaje de consultas para simplificar múltiples enpoints de servicios web.

La presentación la pueden encontrar embebida aquí y en [Speaker Deck](https://speakerdeck.com/poguez/comparando-tecnologias-para-servicios-y-servicios-web).


<script async class="speakerdeck-embed" data-id="a32b97469daf4e778b7490565f785fc3" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>


[Mis otras presentaciones](https://speakerdeck.com/poguez/)

Dejen sus comentarios y dudas aquí.


Noé.



Foto de portada: Noé Domínguez / Creative Commons Attribution-NonCommercial 4.0 International