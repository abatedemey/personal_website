---
layout: page
title: F1 CAMERA
---

<img src="/assets/f1-camera.png" alt="">

## Behind the F1

After I completed my Masters degree, I moved back to my apartment in New York City and was hungry to work on autonomous systems. While scouring Angellist for interesting startups, I found two would be co-founders, Kav and Andy, who posted an idea that they had for automating the filming of soccer games.

Both of them are avid soccer players and understood the challenge in getting reliable video of their games. This challenge is felt most acutely in youth sports, where reliable video coverage is not just a nice to have, but at times a necessity.

Parents are eager to have footage of their children for nostalgic purposes and to share on social media. Parents also live on busy schedules and often cannot attend every game. The athletes use video footage to create highlight reels of their successes for college recruitment. And lets be real, we all like to flex on the 'gram.

So what happens at most youth games? Mom and Pop pull out their iPhones and film, watching the live game through their iPhone, getting distracted talking to the people around them, missing the big goal. Or, for the higher budget games, hiring a professional videographer who outputs amazing videos but at a premium cost.

But, videographers are people after all, and they cant make every sunday 9AM game your kid plays. They also need a few days to edit and upload the game. Bragging about your highlight from last week just isnt the same as sharing it right after the game.

So back to Kav and Andy. They had an idea and they were ready to pounce on it. They wanted to build an intelligent camera that you can put on the side of a soccer field that would autonomously film the game the way a videographer would.

Combined, they had the software and business acumen to start, but they needed an engineer with the hands on hardware development skills to really get started. And there we set out to create FieldVision, a company that would later sell autonomous game filming as a service to coaches, parents, and players across America.

## Abate Jr.

In the early days, we tried a bunch of ideas, building multiple scrappy prototypes before landing on the final design.

Our first attempt, lovingly named Abate Jr., was to have a two camera system, where one camera views the entire field, uses computer vision to determine where the players are, then pans another camera on top to the action. It kinda worked. I mean. It followed people, just a bit slower than real time.

<img src="/assets/hero-v2.jpg" alt="">

We went back to the drawing board and added some additional people to the team. A computer vision brainiac, internally known as Dr. Bri-Bri, and an all around software wiz, Mat (with one "t").

## Enter The F1

Instead of physically panning a camera with a motor, which would always require near instant processing to avoid missing the action, we started digitally panning on a 180 degree video of the field. By analyzing a few seconds of video at a time, the computer vision algorithm could accurately determine where players are, and where the zoomed in view should be looking.

The biggest challenge to this approach was that by digitally zooming in on a 180 degree video, the image quality would suffer. To fix this, we used three 4k camera modules, pointed at the left goal, the center, and the right goal, then seamlessly stitched them together into one panoramic video.

<img src="/assets/stitched-video.png" alt="">
*Stitched 180 degree video from three cameras*

<img src="/assets/zoomed-in-video.png" alt="">
*Digitally zoomed in view*

## The Hardware
At the core of the camera is the Nvidia Jetson TX2 module. The Nvidia Jetson TX2 enables the camera to capture and hardware encode 4k video from three cameras simultaneously. Using the powerful GPU, we stitch the videos in real time and run background subtraction to see where the players are.

<img src="/assets/f1-iso.jpg" alt="">

The weatherproof camera is designed with filming outdoors in mind. A large heatsink across the top, a double paned top piece, and light color scheme keeps the camera running under full day tournaments in direct sunlight.

The result: We automated live streaming at high image quality across multiple sports. We built a system that can track players and automatically collect statistics, indoors and outdoors.
