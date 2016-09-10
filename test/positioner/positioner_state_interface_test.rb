module PositionerStateInterfaceTest
  def test_responds_to_goto_1
    assert_respond_to(@state, :goto_1)
  end

  def test_responds_to_reach_1
    assert_respond_to(@state, :reach_1)
  end

  def test_responds_to_goto_2
    assert_respond_to(@state, :goto_2)
  end

  def test_responds_to_reach_2
    assert_respond_to(@state, :reach_2)
  end

  def test_responds_to_goto_3
    assert_respond_to(@state, :goto_3)
  end

  def test_responds_to_reach_3
    assert_respond_to(@state, :reach_3)
  end

  def test_responds_to_goto_4
    assert_respond_to(@state, :goto_4)
  end

  def test_responds_to_reach_4
    assert_respond_to(@state, :reach_4)
  end
end
