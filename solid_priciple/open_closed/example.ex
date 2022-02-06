defmodule SolidPriciple.OpenClosed.Example do
  @moduledoc """
    【开闭原则】的定义：
    一个软件实体（如类、模块和函数）应该对扩展开放,对修改关闭。
  """
  @doc """
    【开闭原则】的个人理解：
    What:
    如果新功能的增加大部分是以新增（而不是修改）代码的方式实现，
    则称其软件满足开闭原则

    Why:
    满足该原则的软件具有稳定性，
    不易导致修改老代码而产生新BUG，
    从而提高开发质量和效率

    How:
    因此代码应该首先要保证单一职责：一个函数、模块、文件只做“一件事”，
    并对业务逻辑进行抽象：比如使用更抽象的命名（命名即职责），
    以快速适应未来功能、需求的变化
  """

  alias SolidPriciple.OpenClosed.ExportDataList
  alias SolidPriciple.OpenClosed.ExportDataTable

  @export_mode_list 1
  @export_mode_table 2

  def main() do
    export_mode = @export_mode_list

    case export_mode do
      @export_mode_list -> ExportDataList.export()
      @export_mode_table -> ExportDataTable.export()
    end
  end
end
