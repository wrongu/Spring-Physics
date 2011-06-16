README: Spring-Physics
======================

---

Spring Physics is a  *very* basic point-mass and spring physics engine written in ActionScript 3.
The drivers are all .fla files, so it requires Flash CS3 or higher to make changes and recompile. You can view the code in the .as files with a simple text editor, and run the examples (.swf files) with flash player 10 or higher.

---

Test1.swf
---------

No interaction.. just a simple triangle that falls under gravity and is contained in the window.

Test2.swf
---------

Same as Test1, except triangle can be controlled with the keyboard

Test3.swf
---------

**The fun one.** This is a test of the `Blob` class. A blob that you can move around the screen with arrow keys. Change colors for cool effects (always prepend with 'Ox'). Uncheck 'use fill' to see the inner mechanics of the blob design.

---

PointMass.as
------------

A point mass has position, velocity, mass. It also has a vector for the sum of forces acting on it. Each update, forces should be summed (`addForce()`) then flushed (`flush()`).

Connection.as
-------------

A connection is between two pointmasses, termed `p` and `q`. The connection's strength is the spring constant `k`. The spring has rest-length `l`. 

System.as
---------

Pointmasses and Connections together. A Blob is a system, as well as the simple triangle seen in examples 1 and 2. Not all points *must* be connected, but they probably *should*. A point-mass that is not connected to the others but in the same system will experience the same keyboard forces as the others (and gravity), but won't be very interesting.

In the `contain()` function, if a point-mass hits a wall, it's velocity is killed (no bounce). A system may bounce, though, just from the compression of the springs against the wall.

Blob.as
-------

Extends `System`, constructor allows for different layouts of points put together automatically where there's a central pointmass and a bunch around it. designed to be a squish-able circle. Can be drawn as a usual system (all lines) OR filled with curves to look more blobby (blobbish?).