---
layout: page
title: DISSERTATION
---
#### University of Bristol, 2016. 

*Top robotics dissertation in graduating year.*

### Problem

Ball and socket joints used in robot shoulder and hip joints present major challenges in sensing accurate joint orientation. This is due to the fact that hip and shoulder joints are capable of rotations in three axes simultaneously. It is crucial that robots have accurate knowledge of their joint orientations to allow them to have spatial awareness and to interact with objects in their environment. 

### Abstract

This dissertation discusses the development of a three degree of freedom spherical joint with an absolute position sensing system. The goal is to develop a system that can determine the absolute position of a spherical joint to be used in applications such as humanoid shoulder or hip joints. Previous research has failed to develop a simple, low cost, and durable system that is ready to be mass produced. 

The proposed system uses multiple three-light patterns embedded in the entire reachable workspace of the joint. 

The novel absolute position sensing system uses low cost, readily available components making it viable for mass production, and simple to implement in robotic systems.


### Overview

The spherical joint includes triangular light patterns embedded at various positions within the socket portion of the joint. The light patterns are spaced such that a camera that is placed within the ball portion of the joint is able to view at least one light pattern at any orientation of the joint. The triangular patterns are made out of unique combinations of red, blue, and green.

As the joint moves about, the camera in the ball views the positions of the light patterns in the socket, and send that data to an attached computer. The camera used is a 180 degree field of view fisheye lens using an equi-solid/equidistant mapping function.


![light-patterns](/assets/dissertation-light-pattern-view.jpg)
*Light patterns embedded in socket*

![light-patterns](/assets/dissertation-ball-view.jpg)
*Camera embedded in ball joint*

Computer vision algorithms use the position of the light patterns in the camera frame to calculate the ZYZ Euler angles of rotation of the joint. This allows the computer to measure the positional data of the joint using the incline/azimuth/twist naming conventinos.
