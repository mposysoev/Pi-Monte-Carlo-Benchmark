defmodule Calculate do
  def pi(n) do
    counter = Enum.count(0..n, fn _ ->
      x = :rand.uniform()
      y = :rand.uniform()
      x*x + y*y < 1.0
    end)
    4.0 * counter / n
  end
end

numberOfIteration = 1000000

result = Calculate.pi(numberOfIteration)

IO.puts(result)
