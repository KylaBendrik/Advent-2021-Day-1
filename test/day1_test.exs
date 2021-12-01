defmodule Day1Test do
  use ExUnit.Case
  # doctest Day1

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
  
  test "input, stage 1" do
    {:ok, input} = File.read("lib/input/input.txt")
    
    Day1.run(input)
    
    assert 1 == 1
  end
  
  test "input, stage 2" do
    {:ok, input} = File.read("lib/input/input.txt")
    
    Day1.run(input, :stage2)
    
    assert 1 == 1
  end
  
  test "testdata, stage 2" do
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
    
    assert Day1.run(testdata, :stage2) == 5
  end
  
  test "chunkify testdata" do
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
    |> Day1.texts_to_ints()
    
    assert Day1.chunkify(testdata, []) == [607, 618, 618, 617, 647, 716, 769, 792]
  end
end
