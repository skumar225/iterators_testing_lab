##Ruby Iterators Lab

###Overview

In this lab you will be exploring all the wonderful methods Ruby provides for us. You will be reading the docs of the different methods, providing a short description in the 'iterators.md' file provided, and implementing the method in the context of a test using RSpec. 

###Instructions
1. Fork / clone this repo && open in sublime
2. `gem install rspec` - you might have to `sudo` this depending on your machine settings (for more on this, see below 'Testing with RSpec')
3. Open the 'iterators.md' file. And follow the instructions provided. Please note, the methods listed are in the same order as those of the tests so it may be helpful for some to do the description and test concurrently. 
4. Open the 'iterators_spec.rb' and read over the tests that have been provided. 
5. run 'rspec spec/iterators_spec.rb' from the iterators_testing_lab directory in terminal to run your tests. See what is passing. Read the information an error provides. 
6. Make the tests pass. Note -- the first test has been provided for you as an example. 
7. Have fun. Tinker.



## Testing with RSpec

### How to get started

RSpec is the testing framework we are going to be using for Ruby (including Rails). To get started:

`gem install rspec` (you might have to `sudo` this depending on your machine settings)

Once you have successfully installed rspec, create a new project:

1. rspec --init (this will create a .rspec and spec/spec_helper.rb file)
2. Inside your .rspec file make sure you have this text
```
--color
--require spec_helper
--format documentation
```

### Rspec matchers

Fortunately, the syntax is very similar to our previous testing matchers in node, here are just a few matchers, that should look similar to mocha/chai.

```
expect(actual).to be ___
expect(actual).to be_between(minimum, maximum).inclusive
expect(actual).to match(/expression/) # We will learn about this very soon!
expect(actual).to be true      # passes if actual == true
expect(actual).to be false     # passes if actual == false
expect(actual).to be_nil       # passes if actual is nil
expect(actual).to be_instance_of(Class)       # passes if actual is an instance of a certain Class
expect(actual).to exist        # passes if actual.exist? and/or actual.exists? are truthy
```

The rspec documentation is a great place to find more of these - you can find them [here](https://www.relishapp.com/rspec/rspec-expectations/v/3-1/docs/built-in-matchers)

### I'm getting errors!

1. Make sure you have done `rspec --init` so that you have a .rspec file and a spec folder with a spec_helper.rb file
2. Did you mean to do require_relative instead of require?
3. If you do use require_relative, make sure you have the exact path
