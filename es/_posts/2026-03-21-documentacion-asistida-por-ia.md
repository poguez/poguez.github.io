---
layout: post
date: "2026-03-21"
title: "Documentación Asistida por IA: Enfoques y Trade-offs"
quote: "Usando IA para acelerar la documentación sin sacrificar la calidad"
image: /media/2026-03-21-ai-assisted-documentation/cover.png
video: false
comments: true
tags: [ ia, documentación, mcp, experiencia-del-desarrollador, diátaxis, backstage ]
author: Noé Domínguez-Porras
series: "Building Data Platforms"
post_number: 1
lang: "es"
permalink: "/es/blog/documentacion-asistida-por-ia/"
---

# Documentación Asistida por IA: Enfoques y Trade-offs

## El Problema de la Deuda de Documentación

La documentación se queda atrás del código. Siempre.

Durante mis últimos seis años manteniendo plataformas de datos, he visto este patrón repetirse a través de múltiples organizaciones y equipos. La documentación es la primera víctima de las prioridades cambiantes y el desarrollo acelerado. Cada vez que hay una reorganización, un nuevo proyecto, o una nueva funcionalidad, la documentación se queda atrás. Prometemos "documentar" después, creamos tickets para tareas de documentación, pero nunca llegamos a ellas. Solo los ingenieros con las mejores intenciones escriben docs conforme avanzan, pero cuando llegamos a ellas, a menudo la documentación se necesita urgentemente para dar soporte a los usuarios.

Creo que este es un escenario común para los equipos de plataforma, la documentación no es opcional, pero usualmente es tan importante que debería ser tratada como infraestructura. Cuando estás construyendo una plataforma de orquestación de datos que sirve a múltiples dominios de negocio, la documentación es una parte esencial de la plataforma. Permite a los usuarios entender cómo usar la plataforma, cómo solucionar problemas, y ayuda con el onboarding de nuevos usuarios.

Últimamente en Adevinta, me pidieron ayudar haciendo docs ya que en un equipo de plataforma de datos la documentación es crucial para onboarding, compartir conocimiento y autoservicio. Como estamos en un proceso de migrar un proyecto con un enfoque de lift and shift, la premisa es que tenemos una solución existente que tenía documentación, y necesitábamos migrarla a la nueva plataforma con diferentes herramientas de documentación. Teníamos que migrar la documentación también, y queríamos usar IA para ayudarnos con eso.

Ya habíamos implementado una solución de documentación basada en repositorios de GitHub y Spotify's Backstage: TechDocs, pero teníamos mucha documentación en Confluence que necesitábamos migrar. Queríamos usar IA para ayudarnos con esa migración, y también queríamos usar IA para ayudarnos con la documentación continua de la nueva plataforma. La documentación no debería ser un cuello de botella, pero a menudo lo es. Queríamos ver si la IA mejoraba la situación o si introducía nuevos desafíos.

## ¿Por qué fallan los workflows tradicionales de documentación?

A menudo tenemos un problema con la documentación porque se trata como una tarea separada del desarrollo. Escribes código, luego escribes los docs. Pero esto crea un problema estructural: la documentación se convierte en una idea tardía, separada del proceso de desarrollo.

El ciclo se ve familiar:

1. El desarrollador implementa una funcionalidad
2. El code review se enfoca en la implementación
3. La funcionalidad se fusiona a main
4. El desarrollador piensa: "Voy a documentar esto después"
5. Creamos un ticket para documentación
5. Después nunca sucede

La trampa del "lo documentaré después" existe porque el cambio de contexto es costoso. Escribir documentación es una habilidad totalmente diferente que escribir código. El código es preciso: lógica, debug, test. La documentación es narrativa: explicar por qué, cuándo, cómo. Cambiar entre estos modos de pensar toma tiempo y energía mental.

La documentación también falla en escalar por otra razón. Tú y tu equipo son un grupo de ingenieros trabajando en la misma documentación. Creas código - y bugs 🐛- concurrentemente. Cuando llegas al paso de documentación, el estado del código podría haber cambiado. Ahora tienes que actualizar la documentación para reflejar los cambios en el código. El proceso es aún más largo, más difícil y frustrante.

Las prácticas de documentación han evolucionado con el tiempo. Nos movimos de wikis a docs as code, donde la documentación vive en el repositorio Git junto con el código. Esto ayudó con el control de versiones y mantener los docs cerca del código, pero no cambió el problema fundamental: los desarrolladores todavía necesitan escribir los docs. Si tienes una fecha límite ajustada, la documentación es lo primero que se corta, entonces puedes entregar tu trabajo antes.

El denominador común en estas situaciones es que la documentación es una tarea humana. El tiempo humano es un cuello de botella. La documentación requiere que alguien se siente, entienda las necesidades del usuario, el sistema y escriba una explicación clara. Conseguir suficiente tiempo es difícil. Está compitiendo con otra funcionalidad, objetivos trimestrales, el siguiente bug a arreglar, el siguiente incidente a resolver.

## Consideraciones de Diseño: IA como Asistente de Documentación

Usar IA para documentación introduce nuevos trade-offs. Explorémoslos.

### Calidad vs Velocidad

Algo que encontré asombroso sobre la IA es que puede redactar documentación muy rápido. Resumir el código, extraer parámetros y generar un bloque de código de ejemplo en minutos. Escribir documentación desde cero toma mucho más tiempo, especialmente si quieres hacerlo bien. Sin embargo, la velocidad viene con advertencias.

La IA sobresale en estructura de nivel superficial: extrayendo firmas de funciones, identificando parámetros, generando bloques de código de ejemplo. Lucha con los matices humanos y organizacionales: ¿por qué existe una regla de validación? ¿Cómo solicitas acceso a un sistema? ¿Cómo configuras accesos a sistemas fuera de este código? Estos requieren juicio humano y contexto.

La revisión humana detecta estas brechas, pero la revisión toma tiempo. ¿Cuánta revisión es suficiente? Si pasas el mismo tiempo revisando docs generados por IA como escribiendo desde cero, ¿has ganado algo?, más de uno se lo ha preguntado.

El balance depende de qué estás documentando. Documentación de referencia como: endpoints de API, opciones de configuración, esquemas de datos, con patrones claros deberían ser fáciles. Documentación conceptual como decisiones de arquitectura, tutoriales, y runbooks operacionales, necesitan revisión humana preferiblemente profunda porque requiere entender la intención y un contexto más amplio.

### Modelos de Human in-the-loop

La primera vez que escuché sobre humans in the loop fue en el contexto de machine learning, era 2016, y todavía vuelvo a mi trabajo favorito sobre Human Computation: [Soylent: a word processor with a crowd inside](https://www.youtube.com/watch?v=hEPDa4POUAQ) de Michael S. Bernstein.
Los modelos de ML no son perfectos, cometen errores, y pueden estar sesgados. La idea de tener un human in the loop es tener a alguien que revise la salida del modelo y corrija cualquier error antes de que se use. Si no has hecho click al demo de Soylent, ahora es cuando. La idea de traer al crowd a los Sistemas Computacionales es mejorar su inteligencia y capacidad. En estos días, los LLMs son mucho mejores que los modelos ML tradicionales para propósito general, sin embargo todavía cometen errores. Pueden alucinar, pueden perder detalles críticos, y pueden producir documentación inexacta o engañosa si no se revisa cuidadosamente.

Al mínimo: precisión técnica. ¿La API documentada realmente funciona de esta manera? ¿Puedes comprobarlo? ¿Son correctos los ejemplos de código? ¿Puedes ejecutarlos? ¿La configuración coincide con la realidad? ¿Puedes comparar los ejemplos con config files?. Me he encontrado con documentación que describe escenarios que no coinciden con el entorno real que tenemos en producción. Esto es una señal de que la documentación no es precisa y puede llevar a confusión para los usuarios.

Más allá de eso: completitud. ¿La IA perdió casos límite críticos? ¿Están documentados los escenarios de error? ¿Qué hay de los modos de fallo?. La mayoría de las veces, veo docs exhaustivos que cubren la mayoría de los casos límite, pero a veces pierden los críticos que pueden llevar a confusión para los usuarios.

Más profundo: contexto y juicio. ¿Por qué existe esta funcionalidad? ¿Qué problemas de negocio resuelve? ¿Cómo encaja en la arquitectura del sistema más amplia?. ¿Cuáles son los supuestos? Estas son las cosas que la IA no puede inferir solo del código. Requieren conocimiento y juicio humano. A veces los ADRs, Design Documents o Explanations son el único lugar donde vive este contexto.

He encontrado que un enfoque por niveles funciona: revisión ligera para docs de referencia directos, un test flight con tutoriales para ver que el procedimiento funciona, revisión pesada para cualquier cosa que involucre decisiones arquitectónicas o procedimientos operacionales, intento llevar estos detalles al prompt, pedir diagramas en formato mermaid, y durante las revisiones cortar tanto como sea posible para mantenerlo mínimo.

### Selección de Herramienta: Por Qué Claude Code + MCP

¿Por qué Claude Code con Model Context Protocol sobre otros asistentes de IA?

Tengo que decir que no he probado muchos asistentes para codificar, pero he estado usando Github Copilot con mi IDE por más de 2 años. He encontrado que es bueno para generar snippets de código, lo usé por un tiempo generando código escribiendo los comentarios primero y dejando que Github Copilot completara las líneas, pero no tenía la habilidad de leer el codebase completo y entender el contexto. Puede generar código basado en el archivo actual, pero no tiene acceso al historial de commits, discusiones de pull request, u otra documentación que podría proporcionar contexto para lo que el código está haciendo. Fue alucinante obtener explicaciones más precisas del código cuando cambié a Claude Code, el CLI es directo y aunque me gusta usar IDEs visuales, todavía estoy acostumbrado a usar la terminal para muchas tareas.

MCP proporciona contexto multi-fuente. Para mi tarea de docs comencé con mis primeras pruebas con links http, pero se quedaron cortos mientras scrapeaba información y buscaba la información que quería. Además, tenía que migrar docs de diferentes repositorios y páginas de confluence, así que necesitaba una forma de conectar a múltiples fuentes de información. MCP me permitió integrar tanto GitHub como Atlassian Confluence, dando a la IA acceso a un contexto más rico.

La integración `mcp-github` lee repositorios de Github enterprise, su estructura, historial de commits, discusiones de pull request, contexto que hace los docs generados por IA más precisos. La IA no está adivinando qué hace el código, está leyendo el código real y las discusiones relacionadas. También, había algo de documentación que tenía documentación en el codebase, así que era importante tener acceso a esa documentación también.

La integración `mcp-atlassian` resolvió un problema diferente: migración. Data analysts, ML y Data Science people en la empresa preferían Confluence a GitHub. Forzar a todos a migrar manualmente no funcionaría. Convencer a todos de traer docs a Markdown no era una opción tampoco. En cambio, `mcp-atlassian` lee páginas de Confluence en su formato HTML, Claude las convierte a Markdown sin problemas, y las migra a repositorios de GitHub. Esto soportó ambos enfoques de documentación sin forzar un workflow en todos.

La conversión de Confluence-a-Markdown funcionó sorprendentemente bien, la estructura HTML se tradujo limpiamente a Markdown, preservando formato, links, las tablas se ven increíbles. Migramos documentación a través de múltiples repositorios de GitHub y docenas de páginas de Confluence sin reformateo manual.

## Enfoque: Arquitectura de Documentación Multi-Fuente

Aquí está cómo estructuramos la documentación con LLMs en cada paso del ciclo de vida.

### Arquitectura de Integración de Documentación

Necesitábamos documentación en tres lugares, para permitir a diferentes equipos trabajar en sus herramientas preferidas:

- **Repositorios de GitHub**: Con control de versiones, docs-as-code, integrados con PRs.
- **Spotify's Backstage TechDocs**: Portal de desarrollador centralizado para descubrimiento, docs-as-code con mejor renderizado y navegación.
- **Atlassian Confluence**: Para equipos que lo preferían, pero indexado en RAG para búsqueda unificada.

El desafío: mantenerlos indexados en un lugar. No queríamos documentación fragmentada a través de los sistemas sin forma de buscar en todas las fuentes.

Solución: una capa de indexación RAG (Retrieval Augmented Generation) que indexa las tres fuentes. Los ingenieros pueden buscar una vez y encontrar documentación sin importar dónde viva. La solución RAG entiende contexto, por ejemplo buscar "data quality validation" devuelve docs relevantes de GitHub, Backstage, o Confluence, clasificados por relevancia.

### Filosofía de Diseño: IA como Asistente

Nuestra filosofía: IA asiste, humanos revisan y deciden.
La IA maneja:
- **Estructura**: Organizando docs siguiendo frameworks, y templates
- **Redacción**: Explicaciones de primera pasada del código
- **Formateo**: Markdown consistente, tablas, bloques de código, diagramas mermaid
- **Extracción de información**: Sacando detalles relevantes de mensajes de commit, PRs, comentarios de código

Los humanos manejan:

- **Contexto**: ¿Por qué existe esto? ¿Qué problemas resuelve? ¿Cuáles son los supuestos?
- **Precisión**: Verificando que el contenido generado por IA coincide con la realidad, especialmente para procedimientos operacionales
- **Juicio**: ¿Qué detalles importan? ¿Qué puede ser omitido?

### El Framework Diátaxis

Adoptamos [Diátaxis.fr](https://diataxis.fr/), un framework de documentación que organiza contenido por intención del usuario:

- **Tutorials**: Orientados al aprendizaje, guías paso a paso para principiantes
- **How-to guides**: Orientados a objetivos, pasos prácticos para tareas específicas
- **Reference**: Orientados a información, descripciones técnicas (APIs, configs)
- **Explanation**: Orientados al entendimiento, trasfondo conceptual (arquitectura, trade-offs)

La IA demostró ser excelente generando documentación que encaja en las categorías de Diátaxis. Apúntala al código y especifica "genera una guía how-to para configurar este pipeline," y produce documentación orientada a objetivos. Pide documentación de referencia, y extrae parámetros de configuración y tipos de datos.

Implementamos esto usando el agente `code-documenter-diataxis`, que entiende el framework y estructura los docs generados por IA en consecuencia. Esto aseguró consistencia: todas las guías how-to seguían el mismo patrón, todos los docs de referencia tenían la misma estructura.

### Patrones de Documentación

Emergieron cinco patrones, a grandes rasgos:

**1. Code-to-docs**: Nueva funcionalidad implementada → IA genera how-to estructurado en Diátaxis → Humano revisa y añade contexto de negocio → Docs committed con código

**2. Patrón de actualización**: Cambio de código fusionado → IA identifica documentación afectada → IA actualiza docs para reflejar cambios → Humano verifica precisión

**3. Extracción de contexto**: Creas un PR → IA lee mensajes de commit y cambios → IA resume cambios para descripciones de PR → Humano edita para claridad o requisitos de descripción de PR

**4. Generación de estructura**: Código existente sin docs → IA hace investigación de la implementación → IA aplica estructura Diátaxis → Humano llena brechas conceptuales

**5. Patrón de migración**: Página de Confluence existe → `mcp-atlassian` lee HTML → IA convierte a Markdown → Humano valida formateo → Committed a GitHub → Backstage publica

## Implementación: Del Código a la Documentación

Caminemos a través de un ejemplo concreto: documentando un pipeline de orquestación de datos.

### El Workflow en pocas palabras

Disculpa si hay pocos detalles técnicos, pero se omiten a propósito para enfocarnos en el proceso.

**Paso 1: Implementación del Código**

El ingeniero escribe un nuevo DAG de Apache Airflow para orquestación de datos:

- Programado diariamente a las 2 AM UTC
- Lee desde bucket fuente S3
- Valida cumplimiento de esquema AVRO
- Escribe a tablas Delta Lake

**Paso 2: Análisis de IA**

Claude Code en CLI lee los contenidos del repositorio, incluyendo:

- Código fuente del DAG
- Mensajes de commit explicando por qué existe el pipeline
- Discusiones de PR relacionadas sobre decisiones de diseño
- Documentación existente para pipelines similares

La IA identifica:

- Trigger de schedule (expresión cron)
- Dependencias (datasets upstream requeridos)
- Parámetros de configuración (rutas S3, nombres de tablas)
- Manejo de errores (lógica de retry, alerting)

**Paso 3: Generación de Borrador**

IA genera documentación estructurada en Diátaxis:

**Guía How-to** (orientada a objetivos):

```markdown
## Ejecutando el Pipeline de Ingesta de Datos

**Propósito**: Ingerir datos diarios de sistemas fuente con validación de esquema

**Prerequisitos**:

- Acceso al bucket fuente S3
- Permisos de escritura en tabla Delta Lake

**Pasos**:

1. Triggear el DAG desde el UI de Airflow
2. Monitorear ejecución en logs
3. Verificar que los datos llegaron a la tabla destino
4. Revisar métricas de calidad de datos en el dashboard
```

**Documentación de Referencia** (orientada a información):

```markdown
## Configuración del Pipeline

**Schedule**: Diario a las 02:00 UTC
**Owner**: Data Platform Team
**Source**: `s3://source-bucket/data/`
**Target**: `delta_lake.analytics.daily_ingestion`
**Schema**: `avro/ingestion-v2.avsc`
```

**Paso 4: Revisión Humana y Mejora**

El ingeniero revisa el borrador de IA y añade:

- **Contexto de negocio**: "Este pipeline alimenta el dashboard de marketing, así que los retrasos afectan el seguimiento de campañas"
- **Casos límite**: "Maneja datos que llegan tarde usando timestamps de eventos, no tiempo de ingesta, las particiones no se cierran"
- **Troubleshooting**: "Si la validación falla, revisa el schema registry por discrepancias de versión"
- **Notas operacionales**: "El pipeline puede ser backfilled usando el parámetro --start-date"
- **Alertas**: "- Envía alertas en fallo, definimos esto fuera del codebase, pero es importante documentarlo también, este es un buen ejemplo del tipo de detalles operacionales que la IA no puede inferir del código por sí misma"

**Paso 5: Publicar a Múltiples Destinos**

Documentación committed a GitHub → Pipeline CI/CD se triggerea → Backstage TechDocs auto-publica → Indexador RAG añade a búsqueda

Ahora la documentación existe en:

- GitHub (con control de versiones, atado al código)
- Backstage (descubrible en el portal de desarrollador)
- Índice RAG para chat bots (buscable a través de todas las fuentes)

### Migración: Confluence a GitHub

Los data analysts preferían Confluence por su formato rico y experiencia de edición familiar. No podíamos forzarlos a cambiar, pero necesitábamos documentación buscable.

**Workflow de migración**:

1. El data analyst mantiene documentación del pipeline en Confluence (tablas, diagramas, texto formateado)
2. `mcp-atlassian` lee páginas de Confluence (formato HTML)
3. IA convierte HTML a Markdown:
    - Tablas → Tablas Markdown
    - Bloques de código → Bloques de código cercados
    - Links → Links Markdown
    - Imágenes → copiadas a GitHub y enlazadas, algunas necesitaron intervención manual
4. Humano valida conversión (algunos casos límite de formateo necesitaron arreglos manuales)
5. Docs migrados committed a repositorios de GitHub
6. Backstage TechDocs recoge nuevos docs automáticamente
7. Solución RAG indexa documentación unificada a través de fuentes

La conversión HTML-a-Markdown manejó la mayoría del formateo automáticamente. Las tablas complejas ocasionalmente necesitaron ajuste manual, pero 80% a 90% del contenido se convirtió limpiamente.

### Controles de Calidad

Implementamos varias verificaciones de calidad:
- **Precisión técnica**: Ejecutar ejemplos de código en docs como integration tests. Si el ejemplo falla, los docs están mal.
- **Completitud**: PRs con cambios de código requieren actualizaciones de documentación. CI falla si las nuevas funcionalidades carecen de docs.
- **Validación de links**: Verificaciones automatizadas verifican que los links internos no se rompan cuando los archivos se mueven. Creamos un comando para verificar links rotos en la documentación, y lo ejecutamos como parte de nuestro agente.

### Herramientas en el Stack

- **Claude Code**: Motor de IA generando borradores de documentación, usando Sonnet 4.5
- **MCP**: Protocolo conectando IA a múltiples fuentes de datos
- **mcp-github**: Lee repositorios, commits, PRs
- **mcp-atlassian**: Lee páginas de Confluence, convierte HTML a Markdown
- **Framework Diátaxis**: Estructura documentación por intención del usuario
- **code-documenter-diataxis**: Agente aplicando patrones Diátaxis, añadiendo metadata de backstage y formateando Markdown
- **Backstage TechDocs**: Portal de desarrollador auto-publicando desde GitHub, solo añadimos configs de mkdocs a nuestros repositorios. Es originalmente de Spotify, pero ahora es un proyecto de código abierto mantenido por la comunidad.
- **Indexación RAG**: Búsqueda unificada a través de Backstage, y Confluence

## Lecciones Aprendidas: Qué Funcionó, Qué No

### Donde la IA Sobresale

**Estructura y consistencia**: IA aplica templates de forma confiable. Cada guía how-to sigue el mismo formato. Cada página de referencia tiene las mismas secciones, semánticamente. Sin embargo, el contenido a veces pierde metadata que es importante para Backstage. Esperamos que esto mejore a medida que iteramos el prompt del agente con ejemplos.

**Primeros borradores**: Empezar desde una página en blanco es difícil, especialmente cuando haces cambio de contexto. Los borradores generados por IA proporcionan andamiaje. Incluso si reescribes 40% de los prompts de planificación, eres más rápido que empezar desde cero. También iteras más rápido proporcionando retroalimentación a planes y borradores antes de que el LLM escriba la versión final.

**Extracción de información**: IA lee código y extrae detalles que los humanos podrían perder—tipos de parámetros, valores por defecto, códigos de error.

**Tareas repetitivas**: Documentar funcionalidades similares (múltiples endpoints de API, opciones de configuración) se beneficia de IA. Mismo patrón, detalles diferentes. También, es bastante útil solo pedir crear diagramas en formato mermaid, este es un buen ejemplo de cómo la IA puede ayudar con formateo y estructuración de la documentación.

### Donde la IA Lucha

**Contexto de negocio**: IA no puede inferir por qué existe una funcionalidad. "Construimos esto para apoyar el nuevo seguimiento de campañas del equipo de marketing" requiere conocimiento humano.

**Casos límite**: Modos de fallo sutiles y corner cases a menudo viven en las cabezas de los ingenieros, no en el código. La IA los pierde.

**Política organizacional**: IA no entiende dinámicas organizacionales, y cosas que se deciden en reuniones, o que no están documentadas en ningún lugar. Escribir design documents, ADRs es la única forma de capturar este contexto, pero no siempre se hace.

### El Patrón de Colaboración Humano-IA

**IA hace**: Estructura, redacción, formateo, extracción de información del código

**Humano hace**: Añadir contexto, verificar precisión, hacer llamados de juicio

Esta división de trabajo funciona porque cada uno maneja lo que hace bien. IA proporciona velocidad y consistencia. Humanos proporcionan entendimiento y juicio.

### Beneficios Inesperados

**Fuerza pensamiento de estructura**: Usar Diátaxis significa decidir por adelantado: ¿es esto un tutorial o un how-to? Esa claridad mejora la calidad de la documentación.

**Baja la barrera de documentación**: Ingenieros menos intimidados cuando están editando borradores de IA en lugar de empezar desde cero.

**Fomenta docs-as-workflow**: Cuando la documentación se vuelve rápida, cambia de "impuesto" a "parte del proceso."

## Discusión: Tus Experiencias y Preguntas

He compartido nuestro enfoque y trade-offs. Ahora tengo curiosidad sobre los tuyos.

**Preguntas para ti**:

1. **¿Has usado IA para documentación?** ¿Qué herramientas? ¿Qué funcionó bien? ¿Qué no?
2. **¿Cómo balanceas redacción de IA y revisión humana?** ¿Dónde trazas la línea entre "shipear la versión de IA" y "reescribirla completamente"?
3. **¿Cómo mides calidad de documentación?** Más allá de cobertura, ¿cómo implementarías la métrica?, ¿cómo mides si los docs son realmente útiles?
4. **¿Qué tareas de documentación querrías más que la IA ayude?** ¿Docs de API? ¿Diagramas de arquitectura? ¿Runbooks (difícil, en mi opinión)?
5. **¿Preocupaciones sobre documentación generada por IA?** ¿Cómo abordas la precisión, y confiabilidad?

Este post documenta nuestro enfoque—usando Claude Code, MCP, Backstage, y Diátaxis para acelerar la documentación mientras mantenemos la calidad. Pero es un enfoque entre muchos. Me encantaría escuchar de ti cómo has abordado este problema.

¿Has encontrado patrones que funcionen mejor? ¿Herramientas que deberíamos explorar? ¿Trade-offs que no hemos considerado? Comparte tus experiencias. Aprendamos unos de otros, sharing is caring :)