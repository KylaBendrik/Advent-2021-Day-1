defmodule Day1 do
  
  def texts_to_ints(input) do
    String.split(input, ["\r", "\n", "\r\n"], trim: true)
    # |> Enum.drop(-1)
    |> Enum.map(fn x -> String.to_integer(x) end)
  end
  
  def run(input) do
    input_list = texts_to_ints(input)
    
    answer = count_increased(input_list, 0)
    IO.puts("answer: #{answer}")
    answer
  end
  
  def run(input, :stage2) do
    input_list = texts_to_ints(input)
    # turn list into chunks
    |> chunkify([])
    
    # run count_increased on those chunks
    answer = count_increased(input_list, 0)
    IO.puts("answer: #{answer}")
    answer
  end
  
  def chunkify([a, b, c | [] ], output) do
    output ++ [a + b + c]
  end
  
  def chunkify([a, b, c | rest ], output) do
    chunkify([b, c | rest ], output ++ [a + b + c])
  end
  
  def is_increased(a, b) do
    cond do
      a < b ->
        1
      true ->
        0
    end
  end
  
  def count_increased([a, b | []], counted) do
    counted + is_increased(a, b)
  end
  
  def count_increased([a, b | rest], counted) do
    count_increased([b | rest], counted + is_increased(a, b))
  end
end
