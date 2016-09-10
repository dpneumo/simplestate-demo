module MotorStateInterfaceTest
  def test_responds_to_up_btn_press
    assert_respond_to(@state, :up_btn_press)
  end

  def test_responds_to_stop_btn_press
    assert_respond_to(@state, :stop_btn_press)
  end

  def test_responds_to_down_btn_press
    assert_respond_to(@state, :down_btn_press)
  end
end
