require 'rubygems'
require 'bundler/setup'
require_relative "../lib/otis"

class Runner
  attr_reader :elevator
  def initialize(elevator: Elevator.new)
    @elevator = elevator
  end

  def run
    elevator.button_push(:goto_2)
    sleep 1
    elevator.button_push(:goto_4)
    sleep 1
    elevator.button_push(:goto_1)
    sleep 1
    elevator.button_push(:goto_3)
  end
end

r = Runner.new
puts "Positioner state is #{r.elevator.positioner.current_state.name}.\n\n"
r.run
