module ConsoleStateInterfaceTest
  def test_responds_to_pushed_1
    assert_respond_to(@state, :pushed_1)
  end

  def test_responds_to_pushed_2
    assert_respond_to(@state, :pushed_2)
  end

  def test_responds_to_pushed_3
    assert_respond_to(@state, :pushed_3)
  end

  def test_responds_to_pushed_4
    assert_respond_to(@state, :pushed_4)
  end

  def test_responds_to_arrive_top
    assert_respond_to(@state, :arrive_top)
  end

  def test_responds_to_arrive_bottom
    assert_respond_to(@state, :arrive_bottom)
  end

  def test_responds_to_arrive_other
    assert_respond_to(@state, :arrive_other)
  end
end
