defmodule SolidPriciple.DependenceInversion.Example do
  @moduledoc """
    【依赖倒置原则】的定义：
    高层模块不应该依赖低层模块,两者都应该依赖其抽象;
    抽象不应该依赖细节;细节应该依赖抽象;
  """

  @doc """
    【依赖倒置原则】的个人理解：
    What:
    也可以理解为面向“抽象”编程，
    这个“抽象”可以理解为抽象类、接口、抽象模块、抽象函数等
    这个“细节”可以理解为具体实现细节，如具体实现的模块、函数等

    Why:
    目的是为了适应需求的拓展、变化，制定好规范和契约
    因为“抽象”的东西要比“细节”的东西稳定、不易变化，
    不去涉及任何具体的操作，
    把展现细节的任务交给具体的实现类去完成。

    How:
    1.每个类尽量提供接口或抽象类，或者两者都具备。
    2.变量的声明类型尽量是接口或者是抽象类。
    3.任何类都不应该从具体类派生。
  """

  @doc """
    声明一个协议（接口）
  """
  defprotocol Size do
    def my_size(data)
  end

  @doc """
    由每个具体的模块（类）去实现这个协议（接口）
  """
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
