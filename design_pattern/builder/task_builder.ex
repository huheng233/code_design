defmodule DesignPattern.Builder.TaskBuilder do
  def set_required_attrs(task_name) do
    %{task_name: task_name}
  end

  def build(task_attrs) do
    task_info =
      Enum.reduce(task_attrs, "", fn {key, val}, acc ->
        "#{acc} #{key}:#{val}"
      end)

    "the task #{task_attrs.task_name} with info #{task_info}"
  end

  def set_type(task_attrs, type) do
    Map.put(task_attrs, :type, type)
  end

  def set_deadline(task_attrs, deadline) do
    Map.put(task_attrs, :deadline, deadline)
  end

  def set_description(task_attrs, desc) do
    Map.put(task_attrs, :desc, desc)
  end
end
