defmodule Day1Test do
  use ExUnit.Case
  doctest Day1

  test "example provided" do
    testdata = """
    199
    200
    208
    210
    200
    207
    240
    269
    260
    263
    """
    
    assert Day1.run(testdata) == 7
  end
end
