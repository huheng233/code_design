defmodule SolidPriciple.InterfaceSegregation.Example do
  @moduledoc """
    【接口隔离原则】的定义：
    客户端不应该被迫依赖于它不使用的方法，
    一个类对另一个类的依赖应该建立在最小的接口上
  """

  @doc """
    【接口隔离原则】的个人理解：
    What:
    应尽量将接口拆分成较小的更专一功能的接口

    Why:
    避免在使用时，去实现不需要的方法
    多个小粒度接口可以自由组合使用

    How:
    接口尽量小，但是要有限度。一个接口只服务于一个业务逻辑。
    为依赖接口的类、模块等定制服务。只提供调用者需要的方法。
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
