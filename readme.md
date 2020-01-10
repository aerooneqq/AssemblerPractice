This program was coded during the Architecture of computing systems course.

Task: find the index of the factorial function where overflow happens (32-bit words).

Solution:
We simply calculate the factorial function until an overflow happens (we can determine that overflow happened with the JB instruction)
After detecting an overflow, we know the index, where this overflow happened, so we can calculate the maximum factorial value with second loop.
