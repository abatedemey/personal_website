---
layout: post
title: Masters Dissertation (University of Bristol)
---

### Problem

Ball and socket joints used in robot shoulder and hip joints present major challenges in sensing accurate joint orientation. This is due to the fact that hip and shoulder joints are capable of rotations in three axes simultaneously. It is crucial that robots have accurate knowledge of their joint orientations to allow them to have spatial awareness and to interact with objects in their environment. 

### Abstract

This dissertation discusses the development of a three degree of freedom spherical joint with an absolute position sensing system. The goal is to develop a system that can determine the absolute position of a spherical joint to be used in applications such as humanoid shoulder or hip joints. Previous research has failed to develop a simple, low cost, and durable system that is ready to be mass produced. This dissertation continues from previous research under the same supervisor, which developed a system that can determine orientation within a 40 degree range from the central axis using a fisheye lens camera and a single three-light pattern. The proposed system uses multiple three-light patterns to extend the orientation measurement range to the entire reachable workspace of the joint, 80 degrees from the central axis. The system is theoretically extendable to a greater region and presently has a measurement error between ±8 degrees. The novel absolute position sensing system uses low cost, readily available components making it viable for mass production, and simple to implement in robotic systems.


### Overview

As a precursor to measuring the orientation of a joint, I had to be able to place the ball and socket joint at known orientations. To do this, I built a test rig that effectively moves the joint on a polar coordinate system.

The test rig is made out of laser cut acrylic sheets, machined aluminum blocks, and off the shelf fasteners. The overall build is low cost, effective, and crucially, portable. Portability was key, as I took this test rig from the Bristol Robotics Lab in the UK, to the Masai Mara in Kenya, Midtown Manhatten, and the remote Rabbit Island of Cambodia.

As for the spherical joint, I designed it in SolidWorks, embedding triangular light patterns at various positions within the socket portion of the joint. The light patterns are spaced such that a camera that is placed within the ball portion of the joint is able to view at least one light pattern at any orientation of the joint. The triangular patterns are made out of unique combinations of red, blue, and green. 

As the joint moves about, the camera in the ball views the positions of the light patterns in the socket, and send that data to an attached computer. The camera used is a 180 degree field of view fisheye lens using an equi-solid/equidistant mapping function. 

Computer vision algorithms use the position of the light patterns in the camera frame to calculate the ZYZ Euler angles of rotation of the joint. This allows the computer to measure the positional data of the joint using the incline/azimuth/twist naming conventinos. 

