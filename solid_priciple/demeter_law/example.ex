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
    一个类、模块等，应对外公开尽量少的方法，
    也尽量避免与其他类、模块产生直接的引用关系，
    或者通过函数的参数传入引用，
    可以通过第三个类、模块来建立关系，
    或者通过事件订阅的方式来进行通信，
    从而降低代码间的耦合度
  """

  def main() do
    Mediator.meeting(Star.info(), Fans.info())
  end
end
