defmodule SolidPriciple.DependenceInversion.Example do
  @moduledoc """
  【依赖倒置】的定义：
  高层模块不应该依赖低层模块,两者都应该依赖其抽象;
  抽象不应该依赖细节;细节应该依赖抽象;
  """

  @doc """
    【依赖倒置】的个人理解：
    也可以理解为面向“抽象”编程，
    这个“抽象”可以是抽象类、接口、抽象模块、抽象函数等
    目的是为了适应需求的拓展、变化，
    避免需求变化导致修改代码而引入的BUG
  """

  defprotocol Size do
    @doc "Calculates the size (and not the length!) of a data structure"
    def my_size(data)
  end

  defimpl Size, for: BitString do
    def my_size(binary), do: byte_size(binary)
  end

  defimpl Size, for: Map do
    def my_size(map), do: map_size(map)
  end

  defimpl Size, for: Tuple do
    def my_size(tuple), do: tuple_size(tuple)
  end
end
