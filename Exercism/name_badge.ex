defmodule NameBadge do
  def print(id, name, department) do
    name_out = if id != nil, do: "[#{id}] - ", else: ""
    department_out = if department != nil, do: String.upcase(department), else: "OWNER"

    "#{name_out}#{name} - #{department_out}"
  end
end
