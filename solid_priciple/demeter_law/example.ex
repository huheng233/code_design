defmodule SolidPriciple.DemeterLaw.Example do
  alias SolidPriciple.DemeterLaw.Mediator
  alias SolidPriciple.DemeterLaw.Star
  alias SolidPriciple.DemeterLaw.Fans

  @moduledoc """
    【迪米特】原则的定义：
    一个类对于其他类知道的越少越好，
    就是说一个对象应当对其他对象有尽可能少的了解,
    只和朋友通信，不和陌生人说话
  """

  @doc """
  【迪米特】原则的个人理解：
    What:
    类、模块之间尽量避免产生直接的依赖关系

    Why:
    降低代码间的耦合度,
    提高代码复用率，
    减少修改代码时的影响范围


    How:
    一个类、模块等应对外公开尽量少的方法，
    一个类、模块等应对外产生尽量少的依赖，
    可以通过第三个类、模块来建立关系，
    或者通过函数的参数传入依赖，
    或者通过事件订阅的方式来进行通信，

  """

  def main() do
    Mediator.meeting(Star.info(), Fans.info())
  end
end
