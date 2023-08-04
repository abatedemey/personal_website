---
layout: page
title: DISSERTATION
---
#### University of Bristol, 2016. 

*Top robotics dissertation in graduating year.*

### Problem
Ball and socket joints in robot shoulder and hip joints pose challenges in sensing accurate joint orientation due to their three-axis rotations. Accurate joint orientation is crucial for robots to have spatial awareness and interact effectively with their environment.

### Abstract
This dissertation presents a novel three-degree-of-freedom spherical joint with an absolute position sensing system. The goal is to create a simple, low-cost, and durable system for accurately determining the absolute position of a spherical joint, suitable for humanoid shoulder or hip joints. The proposed system utilizes multiple three-light patterns embedded in the joint's reachable workspace, making it viable for mass production and easy to implement in robotic systems.

### Overview
The spherical joint incorporates triangular light patterns embedded at various positions within the socket. A camera within the ball of the joint captures the light pattern positions in the socket as the joint moves. The camera utilizes a 180-degree fisheye lens with an equi-solid/equidistant mapping function.


<div style="display: flex; margin-bottom: 60px;">
  <div style="flex: 1; padding-right: 10px; max-height: 300px;">
    <img src="/assets/dissertation-light-pattern-view.jpg" alt="Light Patterns in socket" style="max-width: 100%; max-height: 100%; object-fit: contain;">
    <p style="text-align: center;">Light patterns embedded in socket</p>
  </div>
  <div style="flex: 1; padding-left: 10px; max-height: 300px;">
    <img src="/assets/dissertation-ball-view.jpg" alt="Camera embedded in ball joint" style="max-width: 100%; max-height: 100%; object-fit: contain;">
    <p style="text-align: center;">Camera embedded in ball joint</p>
  </div>
</div>

Computer vision algorithms use the light pattern positions to calculate the ZYZ Euler angles of rotation of the joint, enabling precise measurement of joint positional data using incline/azimuth/twist naming conventions.
