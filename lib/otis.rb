require "simplestate"
require_relative "otis/motor/motor"
require_relative "otis/motor/motor_controller"
require_relative "otis/motor/up"
require_relative "otis/motor/down"
require_relative "otis/motor/stopped"

require_relative "otis/positioner/positioner"
require_relative "otis/positioner/state/at_x"
require_relative "otis/positioner/state/going_to_x"

require_relative "otis/console/console"
require_relative "otis/console/state/top_floor"
require_relative "otis/console/state/bottom_floor"
require_relative "otis/console/state/other_floor"

require_relative "otis/elevator/elevator"
