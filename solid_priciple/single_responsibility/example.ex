defmodule SolidPriciple.SingleResponsibility.Example do
  @moduledoc """
    【单一职责】原则的定义：
    一个文件、模块、类、函数等，
    应该只有一个引起其变化的“因素”
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
