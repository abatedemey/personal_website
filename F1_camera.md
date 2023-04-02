---
layout: page
title: F1 CAMERA
---

<img src="/assets/f1-camera.png" alt="">

## Inception

After finishing my Master's degree, I was faced with the decision of either staying in the UK or coming back to the States. Ultimately, my drive to swing for the fences in a startup won over my love of free healthcare.

While searching for opportunities, I bumped into Kav & Andy, two would-be co-founders getting ready to make their next big jump. The vision was to automate the way people film youth soccer games. At this point, semi-professional video of sports was limited to elite schools and clubs. Automation was a way to bring the power of video to a much wider audience.

And so, I joined Kav & Andy to lead the Hardware Product Development of a fully autonomous camera platform in our first startup, FieldVision.

## Abate Jr.
<img src="/assets/hero-v2.jpg" alt="" style="max-width:200px;width:100%" align="right">
In the early days, we tried a bunch of ideas, building multiple scrappy prototypes before landing on the final design.

Our first attempt, Abate Jr., was a two camera system, where one camera views the entire field, uses computer vision to determine where the players are, then pans another camera on top to the action. It kinda worked. I mean. It followed people, just slower than real time.


Slightly slower than real time is a non-starter in fast action sports so back to the drawing board we went. 

<br />
<br />
<br />

## Enter The F1

Rather than physically panning a camera, which would require instant processing to avoid missing the action, we digitally panned using a 180-degree video of the field. We detected player coordinates to pan and zoom to the action. 

A challenge with digitally zooming was the image quality loss. To address this, we used  three 4k camera modules pointed at each goal and stitched them together into a seamless panoramic video.

<img src="/assets/stitched-video.png" alt="">
*Stitched 180 degree video from three cameras*

<img src="/assets/zoomed-in-video.png" alt="">
*Digitally zoomed in view*

## The Hardware
<img src="/assets/f1-iso.jpg" alt="F1 Camera"  style="max-width:600px;width:100%" align="right">

The camera's core is the Nvidia Jetson TX2 module, which enables it to capture and hardware encode 4k video from three cameras simultaneously. With its powerful GPU, the camera can stitch videos in real-time and run background subtraction to locate players. 

The weatherproof design, including a large heatsink, double paned top piece, and light color scheme, allows for outdoor filming under direct sunlight during full-day tournaments. The outcome is an automated, high-quality live streaming system for multiple sports that tracks players and collects statistics indoors and outdoors.

