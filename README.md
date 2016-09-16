# simplestate-demo
A small app to demonstrate the use of the simplestate gem.

This uses the metaphore of an elevator to demonstrate the use of the simplestate gem. It is actually two apps rolled into one. The first is simply a controller for a (elevator) motor with states for going :Up, :Down and :Stopped.

The second app models the elevator as consisting of two interacting components: a Console and a Positioner. "Pushing" an elevator button sends the elevator to the appropriate floor.


This is a work in progress. I will try to update it as other projects permit. My intent is that it should always be a functional app.

####Usage:

  Clone the app: ```git clone https://github.com/dpneumo/simplestate-demo.git otis```

  cd into it: ```cd otis```

  Run bundle: ```bundle install```

  Run the motor app: ```bundle exec ruby runner/motor_runner.rb```

  Run the elevator app: ```bundle exec ruby runner/elevator_runner.rb```
