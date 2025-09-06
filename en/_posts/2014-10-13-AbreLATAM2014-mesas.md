---
layout: post
title: "A Review of Open Data at AbreLATAM 2014"
quote: "A review of the tables I participated in."
image: /media/2014-10-13-AbreLATAM2014/biblioteca_de_mexico.jpg
comments: true
permalink: "/en/blog/abreLATAM2014/"
tags: [ "open-data", "open-government", "abrelatam", "abrelatam2014", "latin-america", "civic-hacking", "ckan", "datamx", "socialtic", "datapedia" ]
lang: "en"
---

Just a few days ago, AbreLATAM 2014 took place, on September 30th of this year. We had already had the opportunity to participate in the event that happened in Uruguay in 2013. This year, 9 out of 10 people from the Codeando México team were present to collaborate.

**AbreLATAM 2014 was an unconference**

Personally, I really like seminars and unconferences, as they are spaces where multiple people come together to share experiences and try to ensure the group has a uniform level of learning. I like them because they work very well both academically and technologically. I say this because, in the end, AbreLATAM 2014 was a platform for all attendees to accelerate knowledge and collaboration among Latin Americans working in transparency and with Open Data.

Some curiosities we found at the event were that we found few strongly technical teams like Codeando México. That's where our participation and the contribution we can make to the Latin American community is evident.

**The Tables I Participated In**

AbreLATAM is an event that lasts only one day and there are many experiences to share. I took an active role even though I hadn't originally planned to. I accompanied the technical discussion on Open Data at the tables I worked at and took notes to share later. The discussions focused on:

* Formats and standards for open data.
* When to use APIs and when to publish open databases.
* How can we integrate an open data repository in Latin America?

***Open Data Standards and Formats***

At the table on open data standards and formats, there was a very technical but at the same time very enriching talk for those who came without knowing much about it. We discussed a lot about the formats in which open data should be published. At that time, without intervening in descriptive or interconnected data topics that constitute the 4 and 5 stars of [5 star Open Data](http://5stardata.info/), we documented:

* We need machine-readable and processable formats. That is, we need to know that our document is suitable for import into any program, free or proprietary, for calculations.

* Accompanying our data with a data dictionary is very appropriate, especially to explain the variables and give some examples of how to use that data or how it was used in this database. See an example in the [Dataset from the IFAI Transparent Travel Challenge](http://datamx.io/dataset/viajes-de-trabajo-de-los-servidores-publicos-del-ifai).

* Character encoding in the data should also be standard and interoperable between operating systems.

* We must include a source for the data, as there is always an organization or person responsible behind that data. See the fields described in [Project Open Data](http://project-open-data.github.io/) like [mbox](http://project-open-data.github.io/schema/#mbox) and [publisher](http://project-open-data.github.io/schema/#publisher).

* The data holder must extend a license that must be open, that is, it must be explicit about how the data can be reused. You can review the [Open Definition](http://opendefinition.org/licenses/) project from the [Open Knowledge Foundation](http://okfn.org) where they analyze different licenses for Open Data. In fact, this is where all the licenses to choose from by default in the open data manager [CKAN](http://ckan.org) are imported from.

* To document datasets in Mexico, we are using the DCAT standard, as is also being used in the European Union. You can see more details in the definitive application profile of the DCAT standard for data portals in the European Union ([DCAT-AP](https://joinup.ec.europa.eu/asset/dcat_application_profile/asset_release/dcat-application-profile-data-portals-europe-final#download-links)).

In general terms, and not very different from the Mexican context, organizations are concerned about how we can help governments publish more data and how NGOs can actively use it to make decisions and inform citizens about specific problems. In general, I think there was a very clear consensus in this edition about the use of Open Data in journalism, and that open data visualizations are one of the most effective ways of communication.

Another concern among NGOs is about the completeness of government spending data. The objective cycle, we agreed, is from when a budget is generated or assigned until it is exercised and has an impact on citizens' lives. Remember that governments make decisions on behalf of citizens, hence the concern to evaluate the impact on citizens' lives. On the same topic, Marcela Rozo from the World Bank told us about the initiative for the Open Contracting Data Standard, which is currently in Beta and can be commented on in English on its [website](http://www.open-contracting.org/beta-release-open-contracting-data-standards). In fact, I had the pleasure of participating in a Sprint at PyconUS 2014 on analyzing databases from different countries to shape the open contracting standard, and I'll tell you more in a future post.

Technically speaking, we are also concerned about education within government agencies so that they recognize themselves as an entity that operates and generates data. The integration of their data must be a priority, as it is currently generated in isolation. This can lead us to make better decisions and is one of the capabilities we need to develop as soon as possible. Remember that in January of this year, the first Chief Data Scientist was appointed to head the [Data Sciences Group](http://www.ida.gov.sg/About-Us/Organisation-and-Team/Data-Sciences-Group) in Singapore.

To close our experience at this table, we talked about [Datamx.io](http://datamx.io), I shared about our data opening center where we help individuals and organizations convert public data in closed or proprietary formats into machine-readable formats for analysis.

***Homologated Data Base in the Region. Open Data or Open API?***

Another very interesting table was where we discussed the use of **application programming interfaces (API)** versus the use of databases in open formats. An important part of this discussion revolved around use cases for when to use an API and when to use a database in open formats. Every programmer's dream and the trend of the Internet of Things is that everything has an API, but it's much more expensive than just publishing the data on a portal. Also, we concluded that sometimes databases do need APIs, like when data needs to be published daily or even more frequently, that is, we need an API when data must be immediate or when it facilitates periodic tasks for the publisher. However, there are certain types of data that, even if not updated very frequently, are also important to have in API format. A particular use case could be alert data about emergencies or data that affects citizen safety.

Going a bit more towards the function of oversight or witness of the data, APIs must be accompanied by documents in open formats. Citizens must be able to download a "snapshot" of the current state of the database. In Mexico, it was mentioned, there are databases that change overnight.

As a personal conclusion from AbreLATAM 2014, I believe we need to bring data to citizens with effective communication. It's not worth duplicating efforts or applications. The potential for cooperation among Latin Americans is immense. Also, Codeando México will continue to have a very active and proactive role so that software that actively uses data happens in the region.

I would also like to congratulate our sister organization [SocialTIC](http://socialtic.org) for organizing the event and for their constant concern to connect organizations in Latin America to solve the region's social problems.

Photo: [La ciudad de los libros (CC)](https://www.flickr.com/photos/pauloslachevsky/14480968212/in/photolist-o4CKkJ-o4sBBB-4Y1zJJ-o2W3Gd-nMg6qb-o4CvCd-o4soFX-o4L3Pv-o4DEam-nMgeR9-nMgz6P-nMgfdQ-o4Dtpo-o4s6TD-4XWxza-o4Kj5T-9bJdSZ-9Kgh5Z-9bMir5-9bJdNX-9bJdVi-9bMirY-9bMisU-9bMivh-9bJdR4-oDFsnV).
Flickr/pauloslachevsky
