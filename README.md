# react-spring-docker-framework

# Summary

Prototype implementation of a completed development framework with infrastructure

# Key Goals

* Security

* Repeatability

* Constant Patching 

* Automated Testing

* Partitioning

* Accessible

* Maintained Open Source

* Infrastructure
  

## Security

All communications between nodes will be encrypted using rotating two=factor authorization and authentication.

Vault provider several key features around secure communications

* Automation for Rotation Passwords

* Secure Spring Client for assuring only secure clients are given secrets.

* Automation for enabling per service per host per service and password isolation.

## Repeatability

The ability to reproduce the clean development environment on demand including the infrastructure.

## Constant Patching

* Automate the updates of used libraries. With automated testing we can validate updates of library and automatically
 create PR.


## Automated Testing

* Automated test data generation will enable you to stand up that will have build in regression test capability at
 all levels include integration, system, and system health checks.
 
 

## Partitioning

There a no systems that infinite scale. So it is always good to support at method that you can always have multiple
 set of infrastructure technology.
 
 * Each domain should have it's own set of instances to any persistent storage layers. It's good practice so if you
  fail let says a MongoDb through something as bad a file corruption you still have the other partitions working
  . Find a logical way to split your workload the storage.
 
  
 
 *  

## Accessible

Build in support to language and to spoken word support

## Maintained Open Source

Use well established technologies for infrastructure and development based on Spring-Boot 2 and support platform for
 services and libraries. Follow standards of 
 
## Infrastructure

Of course we can't write platforms without infrastructure and setting up working infrastructure can be a big headache
for deploying quick prototypes that will eventually become useful services. So why not have a base example platform
with all the goodies and the way to utilize them.
   
   


  

