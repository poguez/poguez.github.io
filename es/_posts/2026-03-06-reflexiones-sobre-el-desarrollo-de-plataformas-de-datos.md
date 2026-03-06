---
layout: post
title: "Reflexiones sobre el desarrollo de plataformas de datos: Mi serie personal"
quote: "Una reflexión personal sobre el trabajo que he estado haciendo en los últimos seis años construyendo plataformas de datos."
image: /media/2026-03-06-reflexiones-sobre-el-desarrollo-de-plataformas-de-datos/cover.jpg
video: false
comments: true
permalink: "/es/blog/reflexiones-sobre-el-desarrollo-de-plataformas-de-datos/"
lang: "es"
tags: ["data-platforms", "career", "distributed-systems", "technical-series"]
date: "2026-03-06"
series: "Building Data Platforms"
post_number: 0
---

# Reflexiones sobre la construcción de plataformas de datos: Mi serie personal

Durante los últimos seis años he estado trabajando en [Adevinta.com](https://adevinta.com). Esta fue la primera oportunidad que tomé cuando llegué a Barcelona.
Parece que fue ayer cuando conocí por primera vez a mis compañeros de equipo, el tiempo ha pasado muy rápido.
Construir una vida personal más estable con Adriana y Emilia requiere tiempo y también esfuerzo.
Durante estos años, me uní a un equipo central llamado Yotta, donde empecé como data generalist trabajando con todo lo relacionado con big data.
A medida que el equipo creció, comenzamos a especializarnos, y fue ahí donde empecé a hacer trabajo más enfocado con pipelines de Spark para el procesamiento de GDPR
y otras herramientas relacionadas con data governance, access control, ownership e ingeniería de costos.

El problema es que he estado inmerso en el trabajo, pasando de un reto al siguiente.
También hay momentos en que la vida se vuelve más exigente y hay que priorizar la vida personal y el bienestar.
Desde la pandemia, las cosas han estado cambiando, en el mundo y en tech.
Estos cambios han transformado estructuralmente la forma en que vivimos y la manera en que nos organizamos como empresas y sociedad.
Algunos dicen que los años dorados de las ciencias computacionales y los empleos en ingeniería quedaron atrás, especialmente con la llegada de los LLMs.
Yo creo que estamos al inicio de una nueva era, una que necesita principios y responsabilidad para guiarla durante las próximas décadas.
Sin embargo, la materia prima que ha dado forma a esta nueva era de la inteligencia artificial, que inició hace unos 25 años es la cantidad de datos recopilados.

Durante el último año he estado trabajando con herramientas asistidas por IA. Al principio las herramientas eran rudimentarias y no muy útiles,
pero los resultados han ido mejorando conforme aprendemos a usarlas, encontrar usos y entender sus limitaciones es algo que me gusta.
Conectar LLMs con otras fuentes de datos via Model Context Protocol, es algo bastante interesante. 
Por eso, quise hacer un ejercicio, antes de sepultar un par de proyectos analicé los commits que había realizado durante los últimos seis años, 
buscando la manera de identificar temas recurrentes en ese mar de commits
y reflexionar sobre ellos para seguir creciendo.

Comenzaré a escribir sobre este recorrido en una serie de blog posts que publicaré a lo largo de este año.
Esto me parece una buena oportunidad para compartir y reconectar con amigos y la comunidad, ya que he estado en silencio por un tiempo.
Puedo decirles a mis amigos de México: sigo trabajando con datos, pero últimamente me he enfocado principalmente en self-service data platforms.
Es un tema muy interesante porque tiene muchos retos técnicos, pero también organizacionales y humanos.
Las open data platforms (como CKAN) también tienen muchos retos, pero para mí se siente como si simplemente hubiera pasado de un
tipo de data platform a otro.

## Las Seis Áreas de Ingeniería de datos que he tocado

Esta serie explora seis áreas que han dado forma a mi trabajo durante estos seis años.
Cada área agrupa un conjunto de problemas, patrones y decisiones de diseño relacionados:

### Área 1: AI & Experiencia del desarrollador

La usabilidad de la plataforma es una preocupación de primer nivel.
Si los {data} x {engineers, scientists, analysts} o ML engineers no pueden entender
cómo usar tu plataforma, construirán maneras alternativas de hacer las cosas o simplemente la evitarán.
Esta área explora:

- _Usabilidad de una Plataforma de datos_
- _Documentación_
- _Gobernanza de datos_

### Área 2: Control de acceso, propiedad y gobernanza

Esto se convirtió en el núcleo de mi trabajo con data platforms.
Las data platforms compartidas son complejas porque requieren
equilibrar el acceso (habilitando el trabajo) con el control (manteniendo la seguridad).
Esta área explora:

- _Definiendo propiedad_
- _Averiguar la propiedad de recursos_
- _Autoservicio de control de acceso_
- _Flexibilidad vs control_

### Área 3: Arquitectura de sistemas distribuidos

Las data platforms son sistemas distribuidos.
Entender la consistencia, la concurrencia y los trade-offs es indispensable.
Una vez que crees conocer la teoría, la práctica y las restricciones del negocio son otra historia.
Esta área explora:

- _Teorema de CAP en la práctica_
- _Borrado de datos y escrituras distribuidas_
- _Control de concurrencia_

### Área 4: Cost Engineering & FinOps

Las data platforms compartidas necesitan visibilidad de costos.
Si nadie sabe cuánto cuestan las cosas, nadie las optimiza.
Esta área explora:

- _Sistemas de contracargo_
- _Atribución de costos_
- _Administración del ciclo de datos_

### Área 5: Seguridad ante fallos y verificación de cumplimiento

Los errores en tiempo de compilación son mejores que los errores en tiempo de ejecución.
Los errores en tiempo de ejecución son mejores que los incidentes en producción.
Esta área explora:

- _Falla seguro, falla rápido_
- _Comprobación de cumplimiento_
- _Comprobación de sistemas para producción_

### Área 6: Decisiones de diseño de sistemas

El área final reflexiona sobre las decisiones arquitectónicas y sus consecuencias:

- _Las multiples dimensiones de privacidad_
- _Privacidad es arquitectura de sisemas_
- _Deuda de arquitectura en datos_


Estos son un par de áreas que no pretenden ser exhaustivas, si no son solo un reflejo
de algunos temas que han sido recurrentes en estos últimos años de ingeniería de datos.
A pesar de que pueden ser temas técnicos, siempre tienen un componente humano y organizacional que es importante considerar.


Empecemos la conversación.

---


_Preguntas para los lectores_:
- ¿Cuál de estas seis áreas resuena más con tu trabajo actual?
- ¿Qué temas añadirías a esta lista para un Data Platform Engineer?

