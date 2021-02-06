---
title: "Random Development Project"
documenttype: "System Architecture Document"
docversion: 1.0.0-DRAFT
version: 1.0.0-DRAFT
customer: "Some Fancy Company"
author: [Bob De Houwer]
thanks: [Stijn C. Dejongh]
date: "\\today"
book: false
toc: true
version: ""
subject: "Markdown"
keywords: [Markdown, Example, Software Development, generation]
subtitle: "\\hspace{1cm}"
lang: "en"
toc-own-page: true
titlepage: true
titlepagee-text-color: "1a5c95"
titlepage-rule-color: "829cd0"
titlepage-rule-height: 3
#titlepage-background: "/home/doji/Pictures/branding/background.pdf"
logo: "/root/docGen/documents/branding/sdd-footer.png"
logo-width: 165
header-left: "\\hspace{1cm}"
header-center: "\\textbf{\\tiny \\thetitle}"
header-right: "\\leftmark"
footer-left: "\\tiny \\thedate \\hspace{0.3cm}| \\hspace{0.3cm} DRAFT VERSION"
footer-center: "\\thepage"
footer-right: "\\tiny \\textcolor{black!60!blue}{\\textbf{SD DEVELOPMENT}} - \\theauthor"
author_lastname: "DEJONGH"
contact_name: "William Shunn"
contact_address: "12 Courier Lane"
contact_city_state_zip: "Pica's Font, NY 10010"
contact_phone: "(212) 555-1212"
contact_email: "format@shunn.net"
---

# Document Overview

## Document Metadata

Here is some text in a text editor :).
The markdown does not include any special formatting, apart from the titles.

### FizzBuzz in Java 8


```java
    IntStream.rangeClosed(1, n)
        .mapToObj(
            i -> i % 3 == 0 
                ? (i % 5 == 0 ? "FizzBuzz " : "Fizz ") 
                : (i % 5 == 0 ? "Buzz " : i+" ")
        )
        .forEach(System.out::print);
```


## Document Structure

Add some information about the document structure here.
This is a very important document, and you should read it super carefully.

---


# Project Description
We are building an awesome thing for our customer.
Hopefully, they will be very happy/

## Context

## Goals & Constraints

### Functional Requirements

### Non-Functional Requirements

## Key Performance Indicators

### Introduction

### KPI's 

