# Ruby Instance Variable Modification Bug

This repository demonstrates a common, yet subtle, bug in Ruby related to modifying instance variables within methods. The bug arises from directly modifying an instance variable (`@value`) without proper consideration for its state across method calls.  The `bug.rb` file shows the buggy code, whereas `bugSolution.rb` provides a corrected version.

## Bug Description
The core issue stems from the line `@value += 1`. While seemingly straightforward, repeated calls to `my_method` lead to a cumulative effect on `@value`, making the method's output unpredictable if the initial value needs to be preserved between calls.  This is easily missed in larger programs.