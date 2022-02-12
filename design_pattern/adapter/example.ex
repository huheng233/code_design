defmodule DesignPattern.Adapter.Example do
  @moduledoc """
    【适配器模式】的定义：
    是一种结构型设计模式，
    它能使接口不兼容的方法能够相互合作。
  """
  @doc """
    【使用场景】
    当调用方与被调用方的代码都不方便直接修改以进行适配时，
    适配器模式允许你创建一个中间层类，
    其可作为代码与遗留代码、 第三方库、怪异接口的方法之间的转换器。
  """
  @doc """
    【个人理解】
    适配器模式可分别为数据结构、算法进行适配，
    关键在于要将适配逻辑独立出来，以保证单一职责、开闭原则
  """

  defp render_view(list_data) do
    data =
      list_data
      |> Keyword.values()
      |> Enum.join(" ")

    "render data: #{data}"
  end

  defp map_to_list_adapter(map_data) do
    map_data |> Map.to_list()
  end

  def main() do
    %{name: "piter", age: "18", gender: "male"}
    |> map_to_list_adapter()
    |> render_view()
  end
end
