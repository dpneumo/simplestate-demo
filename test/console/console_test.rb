require 'test_helper'
require "dummy/dummy_configs.rb"

class ConsoleTest < Minitest::Test
  def setup
    @cnsl = Console.new( opts: DummyConsoleConfig.new({elevator: 'Elevator'}) )
  end

  def test_responds_to_pvt_method_set_btn_states
    assert @cnsl.respond_to?(:set_btn_states, true)
  end

  def test_responds_to_pvt_method_departure
    assert @cnsl.respond_to?(:departure, true)
  end
end
