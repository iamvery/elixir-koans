defmodule AboutAsserts do
  use Koans

  think "We shall contemplate truth by testing reality, via asserts." do
    assert true
  end

  think "When reality lies, we shall refute truth" do
    refute false
  end

  think "Enlightenment may be more easily achieved with appropriate messages." do
    assert true, "This should be true -- Please fix this"
  end

  think "To understand reality, we must compare our expectations against reality." do
    expected_value = 2
    actual_value = 1 + 1

    assert expected_value == actual_value
  end

  think "Assertions are smart" do
    is_1_equal_2? = fn -> assert 1 == 2 end
    is_1_greater_than_2? = fn -> assert 1 > 2 end

    message = "Assertion with " <> "==" <> " failed"
    assert_raise ExUnit.AssertionError, message, is_1_equal_2?

    message = "Assertion with " <> ">" <> " failed"
    assert_raise ExUnit.AssertionError, message, is_1_greater_than_2?
  end
end

