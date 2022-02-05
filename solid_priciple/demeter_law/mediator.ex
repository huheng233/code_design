defmodule SolidPriciple.DemeterLaw.Mediator do
  # 中介者负责组织A与B的会见
  def meeting(a, b) do
    "在中介者的组织下，#{a.name} 和 #{b.name} 见面了~"
  end
end
