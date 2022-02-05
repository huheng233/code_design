defmodule SolidPriciple.InterfaceSegregation.Example do
  @moduledoc """
    【接口隔离】原则的定义：
    客户端不应该依赖它不需要的接口。
    类间的依赖关系应该建立在最小的接口上。
  """

  @doc "用于计算元素尺寸的接口"
  defprotocol Size do
    def size(data)
  end

  @doc "用于计算元素颜色信息的接口"
  defprotocol Color do
    def red(data)
    def green(data)
    def blue(data)
  end

  defimpl Size, for: BitString do
    def size(binary), do: byte_size(binary)
  end

  defimpl Size, for: Map do
    def size(map), do: map_size(map)
  end

  defimpl Color, for: BitString do
    def red(data), do: 0.5
    def green(data), do: 0.2
    def blue(data), do: 0.8
  end

  defimpl Color, for: List do
    def red(data), do: 0.1
    def green(data), do: 0.3
    def blue(data), do: 0.5
  end
end
