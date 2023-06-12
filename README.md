# README

## Starter code for Lab Assignment #10

**Names:**

## Introduction

In this laboratory, we have the task of completing the unfinished Ajax implementation from the workshop.

## Application Explanation

This application is a basic simulation of Twitter.

### Data Model

Here is the data model:
![ER Model](erd.png)

* Tweet: represents a normal tweet.
* Hashtag: represents the tags that a tweet can have.
* User: represents the user.

### App Functionality

The app includes the following features:

* Basic CRUD operations for tweets.
* User login (devise).
* Automatic creation of hashtags.

## Installation

### Requirements

Make sure you have the following requirements installed:

* Ruby 3.2.0
* Node 18 or higher
* Rails 7.0.0 or higher
* Postgres 14 or higher

### Steps

Follow these steps to install the application:

* Clone the repository.
* Run bundle install.
* Run rails db:create.
* Run rails db:migrate.

## Requirements Lab

The following requirements should be met, as discussed in the workshop:

* The search functionality in the navbar should work as intended, displaying tweets associated with the searched text using Ajax.
* Users should only be able to delete their own tweets, implemented with CanCanCan.
* User roles should be implemented in the application, with admin users having privileged access and the ability to manage all aspects of the app.

### Extras

In addition to the mentioned requirements, you may consider the following optional enhancements:

* Add CanCanCan to allow users to delete only their own tweets.
* Create user roles (admin and regular user), where the admin role has the ability to perform all actions.
