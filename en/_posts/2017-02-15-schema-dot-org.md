---
layout: post
title: "Connecting Data"
quote: "[Recommended reading] The evolution of structured data and Schema.org."
image: false
image: "/media/2017-02-15-schema-dot-org/portada.jpg"
comments: true
permalink: "/en/blog/schema-org-evolution-of-structured-data-on-the-web/"
tags: [ "web", "schema.org", "structured data", "linked data", "semantic web", "open data", "tim berners lee", "w3c", "html5", "json-ld", "microdata", "rdfa" ]
lang: "en"
---

When I was working with Open Data, one of the concerns that persisted in publishing open data was the creation of structured data that could be described to find relationships. In fact, since the Web was created, Tim Berners Lee had the vision of making a system where interconnected information could be managed. He was not referring exclusively to documents but also to physical resources like equipment, machines. He also referred to people and their skills as part of a system with linked information. Altogether, what he created at CERN was a system to deal with information loss in a system that evolves complexly. The solution resulted in a distributed hypertext system. You can see the proposed solution in detail in [Information Management: A Proposal (1989)](https://www.w3.org/History/1989/proposal.html).

{% include image.html url="/media/2017-02-15-schema-dot-org/the-web.png" width="100%" description="The Web as a Distributed System Figure 2 from Information Management: A Proposal (1989)" %}

The World Wide Web Consortium [(W3C)](http://www.w3c.org) describes best practices for publishing structured data on the Web in its [wiki](https://www.w3.org/wiki/LinkedData). A commonly used contributed site in the Open Data community is [5 ★ Open Data](http://5stardata.info/) which includes an approach through [RDF](https://www.w3.org/RDF/) and [Linked Data](https://www.w3.org/standards/semanticweb/data).

I recommend this article from [Communications of the ACM](http://cacm.acm.org/) where they discuss several approaches to creating structured data in HTML documents.
Something I find interesting is that the use of software like Wordpress and Drupal has helped the creation of structured information because there are distributions or plugins that include it by default.
Some concepts they mention and that we've probably seen are the vCard and hCalendar formats.
This information helps personal assistants like Siri, Google Now to find information more easily. Or it allows our smartphones to perform actions like saving a vCard to your contacts or adding an appointment to your calendar in hCalendar format.
Hopefully you can read it and comment on whether you've used it or what would be the next way to use it on your sites.
You can see some defined vocabularies on how to describe a [recipe](http://schema.org/Recipe), a [business](http://schema.org/LocalBusiness), a [hotel and its variants](http://schema.org/docs/hotels.html).

Many ideas come to mind with food; I've noticed that foursquare-Swarm is terrible for finding Mexican food specifically. Creating vocabularies and a more specialized system could probably help us find better information about where to eat in Mexico.

{% include image.html url="/media/2017-02-15-schema-dot-org/diningcode.jpg" width="50%" left="25%" description="Dining Code Android App(다이닝코드)" %}

Something I like about Korea is the way services are tailored to their needs and culture.
Maybe another time we can do an overview of [Dining Code](http://www.diningcode.co.kr/), an app that helps you find places to eat in Korea through blog reviews, comments, and dishes.
It's something I like, because for app users, heaven and hell are in the details.

You can find the article at: [Schema.org: Evolution of Structured Data on the Web](http://cacm.acm.org/magazines/2016/2/197422-schema-org/fulltext)

Photo: [Flickr/melancholija](https://www.flickr.com/photos/melancholija/8067666973/)
