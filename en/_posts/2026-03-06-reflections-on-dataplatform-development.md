---
layout: post
title: "Reflections on Data Platform development: My Personal Series"
quote: "A personal reflection on the work I've been doing in the last six years building data platforms."
image: false
video: false
comments: true
permalink: "/en/blog/reflections-on-data-platform-development/"
lang: "en"
tags: ["data-platforms", "career", "distributed-systems", "technical-series"]
date: "2026-03-06"
series: "Building Data Platforms"
post_number: 0
---

# Reflections on Building Data Platform Masonry: My Personal Series

Over the past six years I have been working at Adevinta.com. This was the first opportunity I took when I arrived in Barcelona.
It feels like yesterday when I first met my teammates, time has passed very fast.
Building a more stable personal life with Adriana and Emilia takes time and effort.
During these years, I joined a central team called Yotta, where I started as a data generalist working across all things big data.
As the team grew, we started specializing, and this is where I started doing focused work with Spark GDPR processing pipelines
and other tooling related to data governance, access control, ownership, and cost engineering.

So the problem is that I have been immersed in the work, moving from one challenge to the next.
There are also moments when life gets more demanding, and you have to prioritize personal life and well-being.
Since the pandemic, things have been shifting, in the world and in tech.
These changes have structurally changed the way we live and the way we organize as companies and society.
Some say the golden years of computer science and engineering jobs are over us, especially with the arrival of LLMs.
I believe we're at the beginning of a new era, one that needs principles and responsibility to guide it through the next decades.

So during the last year, I have been working with AI-assisted tools. At first the tools were rough and not very useful,
but the results have been improving as we learn how to use them.
I did something I find exciting: I used it to catch up with the work I had been doing in the last years.
I analyzed the commits I had made over the last six years, and find a way to surface recurring themes from that sea of 
commits and reflect on them to keep growing.

I will start writing about this journey in a series of blog posts that I will be publishing this year.
This feels like a good opportunity to share and reconnect with friends and the community, since I've been quiet for a while.
I can tell my old friends from Mexico: I'm still working with data, but lately I've been working mostly on self-service data platforms.
This is a very interesting topic because it has a lot of technical challenges, but also organizational and human ones.
Open data platforms (like CKAN) also have a lot of challenges, but for me it feels like I've just switched from one
kind of data platform to another.

## The Six Engineering Areas

This series explores six areas that have shaped my work over these six years.
Each area groups a cluster of related problems, patterns, and design decisions:

### Area 1: AI & Developer Experience

Platform usability is a first-class concern. 
If data engineers, scientists, analysts, or ML practitioners can't figure out
how to use your platform, they'll build workarounds or avoid it entirely. 
This area explores:

- **Platform usability**
- **Documentation**
- **AI-assisted documentation**

### Area 2: Access Control, Ownership & Governance

This became the core of my work with data platforms. 
Shared data platforms are complex because they require 
balancing access (enabling work) with control (maintaining privacy and safety). 
This area explores:

- **Defining ownership**
- **Ownership resolution**
- **Self-serve access control**
- **Flexibility vs control**

### Area 3: Distributed Systems Architecture

Data platforms are distributed systems. 
Understanding consistency, concurrency, and trade-offs is a must.
Once you think you know the theory, the practice and business constraints are another story.
This area explores:

- **CAP theorem in practice**
- **Distributed deletes and writes**
- **Concurrency control**

### Area 4: Cost Engineering & FinOps

Shared platforms need cost visibility. 
If no one knows what things cost, no one optimizes.
This area explores:

- **Cost attribution**
- **Data lifecycle management**
- **Chargeback systems**

### Area 5: Fail Safety & Compliance

Compile-time errors are better than runtime errors. 
Runtime errors are better than production incidents.
This area explores:

- **Fail-safe, fail fast**
- **Compliance checks**
- **Production readiness checks**

### Area 6: Systems Design Decisions

The final area reflects on architectural decisions and their consequences:

- **The multiple dimensions of privacy**
- **Privacy is architecture**
- **Architectural debt in data**

Let's start the conversation.

---

**Questions for readers**:
- Which of these six areas resonates most with your current work?
- What topics would you add to this list for a Data Platform engineer?