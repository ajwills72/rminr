# Experiment generator software for Research Methods Teaching

At both Stages 2 and 4, we need a program that students can use to build their own experiments. 

## Requirements

1. Cross-platform (Windows, Mac, and Linux): to enable students to use it on whatever machines they have

2. Free and open source: Because then students can use it forever without licensing issues, and because teaching about
open platforms is part of teaching about open science

3. No installation / calibration required: We want students to be able to use public workstations 
around the university. We could try and  get the software on the central image, but that turns out to be a lot of work, 
and is not always successful.

4. Easy to use as possible: Psychology students have little background in programming

5. Powerful enough to run realistic experiments: Both because realistic research methods is central to our philosophy, 
and because we want something that we can also use at Masters level, and beyond.

6. Lightweight: The testing machines in Link are pretty old, and under-specced (Windows 10 and integrated graphics on 4GB RAM).
Many student laptops are similar spec. It has to run on these, perhaps not with ms-accurate timing, but without random 
multi-second freezes!

## Choices

It's basically between PsychoPy and OpenSesame, I think - I don't see any other options that even get close to the above
requirements. 

PsychoPy has the advantage that some of us have been using it for years now. But it has some fatal issues, 
I think. In particular, it just does not work reliably on the Link machines, and that seems 
unlikely to change until after the machines are replaced or upgrading. I requested this a year ago but was declined.

OpenSesame, in my testing so far, seems to hit all the requirements. It's got a great GUI, better than PsychoPy, 
and arguably better than E-prime. It generated Python scripts under the hood, and you have access to that, so the GUI
can be supplemented by code (written by those who know how and given to students) if needed. There's a one-hour training 
video that probably takes a more like 90 mins to work along with, but at the end of that I feel like I understand the basics.
We might need to generate teaching materials pitched at a lower level than this video, though. OpenSesame can be run on a 
Windows machine without installation. It's sufficiently lightweight that I can even run it inside a virtual Windows machine 
running on my linux laptop. I can also run it on Linux just fine (the installation is a bit more of a pain, but 
Linux users will cope). I have no easy way of testing it on a Mac. 



