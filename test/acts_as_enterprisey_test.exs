defmodule ActsAsEnterpriseyTest do
  use ExUnit.Case
  doctest ActsAsEnterprisey

  test "" do
    assert {time, 4} = :timer.tc(fn -> ActsAsEnterprisey.Helper.my_func(1) end)
    assert time >= 100_000
  end
end
