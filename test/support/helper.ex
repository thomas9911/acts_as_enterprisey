defmodule ActsAsEnterprisey.Helper do
  use ActsAsEnterprisey

  @decorate_all enterprisey(100)

  def my_func(a) do
    b = a + 1
    b + 2
  end
end
