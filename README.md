# docker-symfony

Showcasing Docker development & packaging of Symfony applications


## What is this thingy?

This (almost) pristine Symfony project aims to document my approach to developing
and packaging PHP applications with Docker and docker-compose.


## What does it cover?

* How to declare and spin up multi-service environments with docker-compose
* How to develop your project leveraging such an environment
* How to integrate XDebug with PHPStorm when working with PHP containers
* How to manage multiple Docker environments inside the same project (i.e. develop, ci, staging, production, etc.)
* How to organize Docker infrastructure code without affecting the rest of the project structure

You can read about the nitty-gritty details at [doc/](https://github.com/1ma/docker-symfony/tree/master/doc) (Work In Progress)


## What do I do with it?

0. Read the docs
1. Clone it
2. Try to spin up the development environment
3. Set up and test the XDebug/PHPStorm integration
4. Try to build the production images and spin up the pseudo-production environment
5. Ask questions if you have any
6. Gimme feedback or submit PRs if you feel like it
