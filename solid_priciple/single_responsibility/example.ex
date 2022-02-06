defmodule SolidPriciple.SingleResponsibility.Example do
  @moduledoc """
    【单一职责原则】的定义：
    一个类应该有且仅有一个引起它变化的原因，
    否则类应该被拆分
  """

  @doc """
    【单一职责原则】的个人理解：
    What:
    一个文件、模块、类、函数等，
    应该只负责做“一件事”

    Why:
    如果一个文件、模块、类、函数内承担了太多逻辑，
    则一个逻辑的修改，可能会对另一个逻辑产生影响，
    当只需要引用其中的一段逻辑时，
    又同时不得不引入另一段逻辑时，
    可能会对性能有影响，或产生意外的结果，
    若保持单一职责原则，
    则可以提高代码的简洁性、易读性、易维护性，
    从而提高开发效率、降低修改代码时影响的范围


    How:
      保持文件、模块、类、函数的简单性，
      将不同逻辑（职责）独立封装成小的逻辑单元，
      每个逻辑单元只做“一件事”
  """
  @user %{
    id: nil,
    name: nil,
    age: nil
  }

  def set_id(user, id) do
    %{user | id: id}
  end

  def set_name(user, name) do
    %{user | name: name}
  end

  def set_age(user, age) do
    %{user | age: age}
  end

  @doc """
    每个方法只做一件事
  """
  def main() do
    @user
    |> set_id(007)
    |> set_age(23)
    |> set_name("axe")
  end
end
