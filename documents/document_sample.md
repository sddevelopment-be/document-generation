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

