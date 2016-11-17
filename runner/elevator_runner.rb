require 'rubygems'
require 'bundler/setup'
require 'ostruct'
#require 'pry'
#require 'pry-byebug'

require_relative "../lib/otis"

class Runner
  attr_reader :elevator
  def initialize
    @elevator = Elevator.new
  end

  def run
    elevator.push_btn_2
    sleep 1
    elevator.push_btn_4
    sleep 1
    elevator.push_btn_1
    sleep 1
    elevator.push_btn_3
  end

  def show_history
    puts "\nElevator state history:"
    elevator.history.each do |step|
      puts "    #{step[0]}  #{step[1]}  #{step[2]}  #{step[3]}"
    end
  end

end

r = Runner.new
puts "Positioner state is #{r.elevator.positioner.current_state.name}.\n\n"
r.run
r.show_history


