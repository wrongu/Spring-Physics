README: Spring-Physics
======================

---

Spring Physics is a  *very* basic point-mass and spring physics engine written in ActionScript 3.
The drivers are all .fla files, so it requires Flash CS3 or higher to make changes and recompile. You can view the code in the .as files with a simple text editor, and run the examples (.swf files) with flash player 10 or higher.

---

PointMass.as
------------

A point mass has position, velocity, mass. It also has a vector for the sum of forces acting on it. Each update, forces should be summed (`addForce()`) then flushed (`flush()`).

Connection.as
-------------

A connection is between two pointmasses, termed `p` and `q`. The connection's strength is the spring constant `k`. The spring has rest-length `l`. 