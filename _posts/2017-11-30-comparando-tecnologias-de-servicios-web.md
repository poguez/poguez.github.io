---
layout: post
title: "Comparing Technologies to Create Web Services: SOA, REST, and GraphQL"
quote: "What options do I have to do it?"
image: false
image: "/media/2017-11-30-comparando-tecnologias-de-servicios-web/portada.jpg"
comments: true
permalink: "/en/blog/comparing-technologies-to-create-web-services/"
tags: [ "web", "api", "rest", "soap", "wsdl", "uddi", "graphql", "web services", "soa" ]
lang: "en"
---

# I want to create a Web Service, what are my options?

A couple of months ago, we asked a question that more than one developer has faced:
What are my options for creating a web service or web API?
I researched and presented at [Devnights Summer edition 2016](https://www.meetup.com/es/DevNightsMX/events/241391717/).
I know, it's been several months since then, but _**sharing is caring**_.

It often happens that when we enter the world of web programming, we learn to make services with the [REST (Representational State Transfer)](https://en.wikipedia.org/wiki/Representational_state_transfer) model.
We usually arrive at opinionated frameworks where technical design decisions have already been made and REST is there by default.
In my case, I started with Ruby on Rails, where REST comes by default.
Other examples where you might have started like this are: Django REST Framework, Play, Zend, Yii, Laravel, Sails, among others. If that's the case, it's almost certain you started with REST.

When you're a novice programmer—or Junior as recruiters say—your knowledge base is constantly changing.
And probably, between learning the framework and creating your first application, you end up encountering other solutions for making services that seem horrible and unintuitive.
They seem cryptic because they're even made with XML, a description language you've been told was made ages ago.
You have to deal with web services that have another architectural style and other descriptions you've never seen.
For example, you're sent a service description in [WSDL (Web Services Description Language)](https://www.w3.org/TR/2007/REC-wsdl20-20070626/) and don't know how to use it.
You're given an endpoint that returns XML for you to use [SOAP (Simple Object Access Protocol)](https://www.w3.org/TR/soap) and you don't know how the data is described.
There's even the possibility that you're given an endpoint to consult a service directory [UDDI (Universal Description, Discovery, and Integration)](https://www.oasis-open.org/committees/uddi-spec/).
It's horrible to go from a paradigm like REST, where elements are described in the URL, to one where you have to do it with XML.
We usually associate these technologies with Java, .NET, or enterprise solutions and think they're complicated.
It's true, they can be complicated but they solve specific problems.

In this presentation, we explore what services are, what web services are.
We remember that the official architecture of the Web is SOA.
We list the main SOA technologies for making services: SOAP, WSDL, and UDDI.
We review REST and its main design components.
We also explore one of the most innovative and new options: GraphQL.
The innovation of GraphQL is that it's more than an architectural proposal for making services. GraphQL is also a query language to simplify multiple web service endpoints.

The presentation is embedded here and on [Speaker Deck](https://speakerdeck.com/poguez/comparando-tecnologias-para-servicios-y-servicios-web).

<script async class="speakerdeck-embed" data-id="a32b97469daf4e778b7490565f785fc3" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>

[My other presentations](https://speakerdeck.com/poguez/)

Leave your comments and questions here.

Noé.

Cover photo: Noé Domínguez / Creative Commons Attribution-NonCommercial 4.0 International
