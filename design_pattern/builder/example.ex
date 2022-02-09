defmodule DesignPattern.Builder.Example do
  @moduledoc """
    【建造者模式】的定义：
    是一种创建型设计模式，
    使你能够分步骤创建复杂对象。
    该模式允许你使用相同的创建代码生成不同类型和形式的对象。
  """

  @doc """
   【使用场景】
   当你需要创建一些复杂的对象时，
   而它们的创建过程相似且仅有细节上的差异。
  """

  @doc """
   【问题背景】
   当你需要创建一个复杂的对象时，
   你可能会写一个带有很多参数的创建方法，
   以至于用的时候不得不传入不必要的默认参数
   或者是为每个有差别的对象写一个专用的创建方法，
   从而产生大量的重复代码，
   而则两者的实现方式都不太理想
  """

  @doc """
   【解决方法】
   1.定义对象的必要创建步骤和可选创建步骤
   2.定义对象的最后的创建方法
   3.调用者调用这些创建步骤（非必须全部）及最后的创建方法
  """

  @doc """
  【优点】
  1.你可以分步创建对象，暂缓创建步骤或递归运行创建步骤。
  2.生成不同形式的产品时，你可以复用相同的制造代码。
  3.单一职责原则，你可以将复杂构造代码从产品的业务逻辑中分离出来。
  """

  alias DesignPattern.Builder.TaskBuilder

  def main() do
    # 创建一个名称为ABC、类型为金卡、截止时间为2020-02-02 12:02:03的任务卡片
    TaskBuilder.set_required_attrs("abc")
    |> TaskBuilder.set_type("金卡")
    |> TaskBuilder.set_deadline("2020-02-02 12:02:03")
    |> TaskBuilder.build()

    # 创建一个名称为ABC、类型为银卡、描述为“这是任务的描述”的任务卡片
    TaskBuilder.set_required_attrs("abc")
    |> TaskBuilder.set_type("银卡")
    |> TaskBuilder.set_description("这是任务的描述")
    |> TaskBuilder.build()
  end
end
