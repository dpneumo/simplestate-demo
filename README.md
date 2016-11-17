# simplestate-demo
A small app to demonstrate the use of the simplestate gem.

This uses the metaphor of an elevator to demonstrate the use of the simplestate gem. It is actually two apps rolled into one. The first is simply a controller for a (elevator) motor with states for going :Up, :Down and :Stopped. The motor runner and the motor controller demonstrate the simplest setup for the state machine. The motor controller inherits from StateHolder and the opts argument can be supplied as a hash and it's contents accessed as needed.

The second app models the elevator as consisting of two interacting components: a Console and a Positioner. "Pushing" an elevator button sends the elevator to the appropriate floor. This more complex arrangement involves multiple state machines communicating through an object, Elevator, that mediates the communication between the state machines, Console and Positioner. In this arrangement it seems best to provide configuration objects to Console.new and Positioner.new via opts. In this case calling super first in #initialize is required. The configuration objects used here are POROs and not OpenStructs though the latter would work. The POROs seem faster and more transparent.

The configuration objects are "immutable" in that after creation their state cannot be altered via any public method. Also the build\_*\_states methods have side effects by design: Creation of the associated states and storage of a reference to the states in the associated state\_holder state\_list. These methods should only be called once. They are called during creation of the configured object. They are made private to indicate that they should not be called again.

I also set the __#hx_size_limit__ for the console and positioner components in the configuration objects. Note that the positioner should step through 2 states for each new console state.

I have verified that this is functional with Ruby 2.1.0, 2.2.4, 2.3.2, and 2.4.0preview3


This is a work in progress. I will try to update it as other projects permit. My intent is that it should always be a functional app.

####Usage:

  Clone the app: ```git clone https://github.com/dpneumo/simplestate-demo.git otis```

  cd into it: ```cd otis```

  Run bundle: ```bundle install```

  Run the motor app: ```bundle exec ruby runner/motor_runner.rb```

  Run the elevator app: ```bundle exec ruby runner/elevator_runner.rb```
