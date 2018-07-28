Recruitment task
================

## Rules:

1. Fork this `gist` and download it locally.
2. The task is to make tests pass and code work.
3. Fell free to add some structure to the code.
4. You are allowed to add extra files if it's needed for better design.
5. The only thing you cannot change are files: `item_test.rb` and `item.rb`, rest is up to you.
6. You have **1 hour** for this.
7. Push your work back to the `gist` in the end.
8. I'm here to help you in case of any questions, concerns, etc. Treat me like your companion in pair programming session. But I shouldn't touch keyboard to change anything you have done. I will also try to help you if anything would look unclear to me.

Good luck!

# Notes/Changes
* This is interview task I've received and decided to extend on it.
* At start of the task BaseClass should be an empty class. Mine already includes solution.
* I have modified ItemTest to use new Ruby syntax, and reduced method branch size by moving assertions to separate methods.
* I have added CatTest to test for multiple validations of same kind on different attributes.
* I have added ValidationIsolationTest to test if validation rulesets definitions are isolated to class that defines them (forces the usage of instance class variables).

# To run
```
ruby item_test.rb
ruby cat_test.rb
ruby validation_isolation_test.rb
```
