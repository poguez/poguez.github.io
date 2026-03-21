---
layout: post
date: "2026-03-21"
title: "AI-Assisted Documentation: Approaches and Trade-offs"
quote: "Using AI to accelerate documentation without sacrificing quality"
image: /media/2026-03-21-ai-assisted-documentation/cover.png
video: false
comments: true
tags: ["ai", "documentation", "mcp", "developer-experience", "diátaxis", "backstage"]
author: Noé Domínguez-Porras
series: "Building Data Platforms"
post_number: 1
lang: "en"
permalink: "/en/blog/ai-assisted-documentation/"
---

# AI-Assisted Documentation: Approaches and Trade-offs

## The Documentation Debt Problem

Documentation lags behind code. Always.

During my last six years maintaining data platforms, I've seen this pattern repeat across multiple organizations and
teams. Documentation is the first casualty of shifting priorities and fast-moving development. Everytime there is a
reorganization, a new project, or a new feature, the documentation falls behind. We promise to "document" it later,
we create tickets for documentation tasks, but we never get to them. Only the best-intentioned engineers write docs as
they go, but when we get to them, often the doc is urgently needed for giving support to users.

I think this is a common escenario for platform teams, the documentation isn't optional, but usually it is so important
that it should be treated as infrastructure. When you're building a data orchestration platform serving multiple
business
domains, documentation is an essential part of the platform. It enables users to understand how to use the platform,
how to troubleshoot issues, and it helps with onboarding new users.

Lately in Adevinta, I was asked to help doing docs since in a data platform team the documentation is crucial for
onboarding, knowledge sharing and self-service. Since we are in a process of migrating a project with a lift and shift
approach, the premise is that we have an existing solution that had documentation, and we needed to migrate it to the
new platform with different documentation tools. We had to migrate the documentation as well, and we wanted to use AI
to help us with that.

We had already implemented a documentation solution based on GitHub repositories and Spotify's Backstage TechDocs, but
we had a lot of documentation in Confluence that we needed to migrate. We wanted to use AI to help us with that
migration, and we also wanted to use AI to help us with the ongoing documentation of the new platform. Documentation
shouldn't be a bottleneck, but it often is. We wanted to see if AI improved the situation or if it introduced new
challenges.

## Why Traditional Documentation Workflows Fail

We often have a problem with documentation because it's treated as a separate task from development. You write code,
then you write the docs. But this creates a structural problem: the documentation becomes an afterthought, separate from
the development process.

The cycle looks familiar:

1. Developer implements feature
2. Code review focuses on implementation
3. Feature merges to main
4. Developer thinks "I'll document this later"
5. We create a ticket for documentation
5. Later never happens

The "I'll document it later" trap exists because context-switching is expensive. Writing documentation is a totally
different ability than writing code. Code is precise: logic, debug, test. Documentation is narrative: explaining
why, when, how. Shifting between these modes takes time and mental energy.

Documentation also fails to scale for another reason. You are a group of engineers working on the same documentation.
You create code - and bugs 🐛- concurrently. When you arrive to the documentation step, the state of the code
might have changed. Now you have to update the documentation to reflect the changes in the code. The process is even
longer, harder and frustrating.

The documentation practices have evolved over time. We moved from wikis to docs as code, where the documentation
lives in the Git repository alongside the codebase. This helped with version control and keeping docs close to code, but
it didn't change the fundamental problem: developers still need to write the docs. If you have a tight
deadline, documentation is the first thing to get cut, then you can deliver your work earlier.

The common denominator in these situations is that documentation is a human task. Human time is a bottleneck.
Documentation requires someone to sit down, understand the user's needs, the system and write a clear explanation.
Getting enough time is hard. It is competing with another feature, quarterly goals, the next bug to fix, the next
incident to solve.

## Design Considerations: AI as Documentation Assistant

Using AI for documentation introduces new trade-offs. Let's explore them.

### Quality vs Speed

Something I found amazing about AI is that it can draft documentation very fast. Summarize the code, extract parameters
and generate an example code block in minutes. Writing documentation from scratch takes much longer, especially if you
want to do it well. However, speed comes with caveats.

AI excels at surface-level structure: extracting function signatures, identifying parameters, generating example code
blocks. It struggles with the human and organizational nuances: why does a validation rule exist? How do you request
for access to a system? How do you configure accesses to systems outside this codebase? These require human judgment and
context.

Human review catches these gaps, but review takes time. How much review is enough? If you spend the same time reviewing
AI-generated docs as you would writing from scratch, have you gained anything?

The balance depends on what you're documenting. Reference documentation like: API endpoints, configuration options, data
schemas, with clear patterns should be easy. Conceptual documentation like architecture decisions, tutorials,
and operational runbooks, needs deep human input because it requires understanding intent.

### Human in-the-loop Models

The first time I was listening about humans in the loop was in the context of machine learning it was 2016, and
I still go back to my favorite work on Human
Computation: [Soylent: a word processor with a crowd inside](https://www.youtube.com/watch?v=hEPDa4POUAQ) by Michael S.
Bernstein .
ML models are not perfect, they make mistakes, and they can be biased. The idea of having a human in the loop is to have
someone review the output of the model and correct any mistakes before it is used. The idea of bringing the crowd
to Computer Systems is to improve its intelligente. These days, LLMs are much better than traditional ML models for
general purpose, however they still make mistakes. They can hallucinate, they can miss critical
details, and they can produce inaccurate or misleading documentation if not reviewed carefully.

At minimum: technical accuracy. Does the documented API actually work this way? Are the code examples correct? Does the
configuration match reality?. I have came across documentation that describes scenarios that don't match the actual
environment we have in production. This is a sign that the documentation is not accurate and can lead to confusion for
users.

Beyond that: completeness. Did AI miss critical edge cases? Are error scenarios documented? What about failure modes?.
Most of the time, I see exhaustive docs that cover most of the edge cases, but sometimes they miss critical ones that
can lead to confusion for users.

Deepest: context and judgment. Why does this feature exist? What business problems does it solve? How does it fit into
the broader system architecture?. What are the assumptions? These are the things that AI can't infer from code alone.
They require human knowledge and judgment. Sometimes ADRs, Design Documents or Explanations are the only place where
this context lives.

I've found a tiered approach works: light review for straightforward reference docs, a test flight with tutorials to see
the procedure works, heavy review for anything involving architectural decisions or operational procedures, I try to
bring those to the minimum in the prompt, ask for diagrams in mermaid format, and during revisions cut as much as
possible to keep it minimal.

### Tool Selection: Why Claude Code + MCP

Why Claude Code with Model Context Protocol over other AI assistants?

I have to say that I have not tried a lot of assistants for coding, but I have been using Github Copilot with my IDE
for more than 2 years. I have found that it is good for generating code snippets, I used for a while generating code by
writing the comments first and let Github Copilot completing the lines , but it doesn't have the ability to read the
entire
codebase and understand the context. It can generate code based on the current file, but it doesn't have access to the
commit history, pull request discussions, or other documentation that might provide context for what the code is doing.
It was mind blowing to get more accurate explanations of code when I switched to Claude Code, the CLI is straightforward
and even though I like to use visual IDEs, I am still used to using the terminal for a lot of tasks.

MCP provides multi-source context. For my docs task I started with my first tests with http links, but they fell short
while scraping for information and searching the information I wanted. Moreover, I had to migrate docs from different
repositories and confluence pages, so I needed a way to connect to multiple sources of information. MCP allowed me to
integrate with both GitHub and Atlassian Confluence, giving the AI access to a richer context.

The `mcp-github` integration reads Github enterprise repositories, their structure, commit history, pull request
discussions—context that makes AI-generated docs more accurate. The AI isn't guessing what the code does, it is reading
the actual code and related discussions. Also, there were some documentation that had documentation in the codebase,
so it was important to have access to that documentation as well.

The `mcp-atlassian` integration solved a different problem: migration. Data analysts, ML and Data Science people in the
company preferred Confluence to GitHub. Forcing everyone to migrate manually wouldn't work. Convincing everyone
to bring docs to Markdown wasn't an option either. Instead, `mcp-atlassian` reads Confluence pages in their HTML format,
converts them to Markdown seamlessly, and migrates them to GitHub repositories. This supported both documentation
approaches without forcing one workflow on everyone.

The Confluence-to-Markdown conversion worked surprisingly well—HTML structure translated cleanly to Markdown, preserving
formatting, links, tables look amazing. We migrated documentation across multiple GitHub repositories and dozens of
Confluence pages without manual reformatting.

## Approach: Multi-Source Documentation Architecture

Here's how we structured documentation with LLMs in every step of the lifecycle.

### Documentation Integration Architecture

We needed documentation in three places, to allow different teams to work in their preferred tools:

- **GitHub repositories**: Version-controlled, docs-as-code, integrated with PRs.
- **Spotify's Backstage TechDocs**: Centralized developer portal for discovery, docs-as-code with better rendering and
  navigation.
- **Atlassian Confluence**: For teams who preferred it, but indexed in RAG for unified search.

The challenge: keeping them indexed in one place. We didn't want documentation fragmented across the systems with no
way to search across all sources.

Solution: a RAG (Retrieval Augmented Generation) indexing layer that indexes all three sources. Engineers can search
once and find documentation regardless of where it lives. The RAG solution understands context—searching for "data
quality validation" returns relevant docs from GitHub, Backstage, or Confluence, ranked by relevance.

### Design Philosophy: AI as Assistant

Our philosophy: AI assists, humans revise & decide.

AI handles:

- **Structure**: Organizing docs following frameworks, and templates
- **Drafting**: First-pass explanations from code
- **Formatting**: Consistent Markdown, tables, code blocks, mermaid diagrams
- **Information extraction**: Pulling relevant details from commit messages, PRs, code comments

Humans handle:

- **Context**: Why does this exist? What problems does it solve? What are the assumptions?
- **Accuracy**: Verifying AI-generated content matches reality, especially for operational procedures
- **Judgment**: Which details matter? What can be omitted?

### The Diátaxis Framework

We adopted [Diátaxis.fr](https://diataxis.fr/), a documentation framework that organizes content by user intent:

- **Tutorials**: Learning-oriented, step-by-step guides for beginners
- **How-to guides**: Goal-oriented, practical steps for specific tasks
- **Reference**: Information-oriented, technical descriptions (APIs, configs)
- **Explanation**: Understanding-oriented, conceptual background (architecture, trade-offs)

AI proved excellent at generating documentation that fits Diátaxis categories. Point it at code and specify "generate a
how-to guide for configuring this pipeline," and it produces goal-oriented documentation. Ask for reference
documentation, and it extracts configuration parameters and data types.

We implemented this using the `code-documenter-diataxis` agent, which understands the framework and structures
AI-generated docs accordingly. This ensured consistency: all how-to guides followed the same pattern, all reference docs
had the same structure.

### Documentation Patterns

Five patterns emerged:

**1. Code-to-docs**: New feature implemented → AI generates Diátaxis-structured how-to → Human reviews and adds business
context → Docs committed with code

**2. Update pattern**: Code change merged → AI identifies affected documentation → AI updates docs to reflect changes →
Human verifies accuracy

**3. Context extraction**: You create a PR → AI reads commit messages and changes → AI summarizes changes for PR
descriptions
→ Human edits for clarity or PR description requirements

**4. Structure generation**: Existing code without docs → AI does a research of the implementation → AI applies
Diátaxis structure → Human fills conceptual gaps

**5. Migration pattern**: Confluence page exists → `mcp-atlassian` reads HTML → AI converts to Markdown → Human
validates formatting → Committed to GitHub → Backstage publishes

## Implementation: From Code to Documentation

Let's walk through a concrete example: documenting a data orchestration pipeline.

### The Workflow in a nutshell

Sorry if there are few technical details, but they are ommited on purpose to focus on the process.

**Step 1: Code Implementation**

Engineer writes a new Apache Airflow DAG for data orchestration:

- Scheduled daily at 2 AM UTC
- Reads from S3 source bucket
- Validates AVRO schema compliance
- Writes to Delta Lake tables

**Step 2: AI Analysis**

Claude Code in CLI reads the contents of repository, including:

- DAG source code
- Commit messages explaining why the pipeline exists
- Related PR discussions about design decisions
- Existing documentation for similar pipelines

The AI identifies:

- Schedule trigger (cron expression)
- Dependencies (upstream datasets required)
- Configuration parameters (S3 paths, table names)
- Error handling (retry logic, alerting)

**Step 3: Draft Generation**

AI generates Diátaxis-structured documentation:

**How-to Guide** (goal-oriented):

```markdown
## Running the Data Ingestion Pipeline

**Purpose**: Ingest daily data from source systems with schema validation

**Prerequisites**:

- Access to source S3 bucket
- Delta Lake table write permissions

**Steps**:

1. Trigger the DAG from Airflow UI
2. Monitor execution in logs
3. Verify data landed in target table
4. Check data quality metrics in dashboard
```

**Reference Documentation** (information-oriented):

```markdown
## Pipeline Configuration

**Schedule**: Daily at 02:00 UTC
**Owner**: Data Platform Team
**Source**: `s3://source-bucket/data/`
**Target**: `delta_lake.analytics.daily_ingestion`
**Schema**: `avro/ingestion-v2.avsc`
```

**Step 4: Human Review and Enhancement**

Engineer reviews AI draft and adds:

- **Business context**: "This pipeline powers the marketing dashboard, so delays affect campaign tracking"
- **Edge cases**: "Handles late-arriving data using event timestamps, not ingestion time, the partitions are not closed"
- **Troubleshooting**: "If validation fails, check schema registry for version mismatches"
- **Operational notes**: "Pipeline can be backfilled using --start-date parameter"
- **Alerts**: "- Sends alerts on failure, we define this outside the codebase, but it is important to document it as
  well, this is a good example of the kind of operational details that AI can't infer from code by itself"

**Step 5: Publish to Multiple Destinations**

Documentation committed to GitHub → CI/CD pipeline triggers → Backstage TechDocs auto-publishes → RAG indexer adds to
search

Now the documentation exists in:

- GitHub (version-controlled, tied to code)
- Backstage (discoverable in developer portal)
- RAG index for chat bots (searchable across all sources)

### Migration: Confluence to GitHub

Data analysts preferred Confluence for its rich formatting and familiar editing experience. We couldn't force them to
switch, but we needed searchable documentation.

**Migration workflow**:

1. Data analyst maintains pipeline documentation in Confluence (tables, diagrams, formatted text)
2. `mcp-atlassian` reads Confluence pages (HTML format)
3. AI converts HTML to Markdown:
    - Tables → Markdown tables
    - Code blocks → Fenced code blocks
    - Links → Markdown links
    - Images → copied to GitHub and linked, some of them needed manual intervention
4. Human validates conversion (some formatting edge cases needed manual fixes)
5. Migrated docs committed to GitHub repositories
6. Backstage TechDocs picks up new docs automatically
7. RAG solution indexes unified documentation across sources

The HTML-to-Markdown conversion handled most formatting automatically. Complex tables occasionally needed manual
adjustment, but 80% to 90% of content was converted cleanly.

### Quality Controls

We implemented several quality checks:

- **Technical accuracy**: Run code examples in docs as integration tests. If the example fails, docs are wrong.

- **Completeness**: PRs with code changes require documentation updates. CI fails if new features lack docs.

- **Link validation**: Automated checks verify internal links don't break when files move. We created a command to check
  for broken links in the documentation, and we run it as part of our agent.

### Tools in the Stack

- **Claude Code**: AI engine generating documentation drafts, using Sonnet 4.5
- **MCP**: Protocol connecting AI to multiple data sources
- **mcp-github**: Reads repositories, commits, PRs
- **mcp-atlassian**: Reads Confluence pages, converts HTML to Markdown
- **Diátaxis framework**: Structures documentation by user intent
- **code-documenter-diataxis**: Agent applying Diátaxis patterns, adding backstage metadata and formatting Markdown
- **Backstage TechDocs**: Developer portal auto-publishing from GitHub, we just added mkdocs configs to our repositories
- **RAG indexing**: Unified search across Backstage,  and Confluence

## Lessons Learned: What Worked, What Didn't

### Where AI Excels

**Structure and consistency**: AI applies templates reliably. Every how-to guide follows the same format. Every
reference page has the same sections, semantically. However, the content sometimes misses metadata that is important
for Backstage. We expect this to improve as we iterate the agent prompt with examples.

**First drafts**: Starting from a blank page is hard, specially when doing context switching. AI-generated drafts
provide scaffolding. Even if you rewrite 40% of the planning prompts, you're faster than starting from zero. Also
you iterate faster by providing feedback to plans and drafts before writing the LLM writes the final version.

**Information extraction**: AI reads code and extracts details humans might miss—parameter types, default values, error
codes.

**Repetitive tasks**: Documenting similar features (multiple API endpoints, configuration options) benefits from AI.
Same pattern, different details. Also, it is pretty useful to just ask to create diagrams in mermaid format, this is a 
good example of how AI can help with formatting and structuring the documentation.

### Where AI Struggles

**Business context**: AI can't infer why a feature exists. "We built this to support the marketing team's new campaign
tracking" requires human knowledge.

**Edge cases**: Subtle failure modes and corner cases often live in engineers' heads, not in code. AI misses them.

**Organizational politics**:  AI doesn't understand organizational dynamics, and things that are decided on meetings, or
that are not documented anywhere. Writing design documents, ADRs is the only way to capture this context, but it is not
always done.

### The Human-AI Collaboration Pattern

**AI does**: Structure, drafting, formatting, extracting information from code

**Human does**: Adding context, verifying accuracy, making judgment calls

This division of labor works because each handles what it's good at. AI provides speed and consistency. Humans provide
understanding and judgment.

### Unexpected Benefits

**Forces structure thinking**: Using Diátaxis means deciding upfront: is this a tutorial or a how-to? That clarity
improves documentation quality.

**Lowers documentation barrier**: Engineers less intimidated when they're editing AI drafts rather than starting from
scratch.

**Encourages docs-as-workflow**: When documentation becomes quick, it shifts from "tax" to "part of the process."

## Discussion: Your Experiences and Questions

I've shared our approach and trade-offs. Now I'm curious about yours.

**Questions for you**:

1. **Have you used AI for documentation?** What tools? What worked well? What didn't?

2. **How do you balance AI drafting and human review?** Where do you draw the line between "ship the AI version" and "
   rewrite it entirely"?

3. **How do you measure documentation quality?** Beyond coverage, how would you implement the metric?, 
how do you measure if docs are actually useful?

4. **What documentation tasks would you most want AI to help with?** API docs? Architecture diagrams? Runbooks (
   difficult one, IMO)?

5. **Concerns about AI-generated documentation?** How do you address accuracy, and trustworthiness?

This post documents our approach—using Claude Code, MCP, Backstage, and Diátaxis to accelerate documentation while
maintaining quality. But it's one approach among many. I'd love to hear from you how you have approached this problem.

Have you found patterns that work better? Tools we should explore? Trade-offs we haven't considered? Share your
experiences. Let's learn from each other, sharing is caring :)
