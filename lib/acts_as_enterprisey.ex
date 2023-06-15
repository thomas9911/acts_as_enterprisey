defmodule ActsAsEnterprisey do
  use Decorator.Define, enterprisey: 0, enterprisey: 1

  def enterprisey(wait_time, body, context) do
    quote bind_quoted: [wait_time: wait_time, body: body] do
      Process.sleep(wait_time)
      body
    end
  end

  def enterprisey(body, context) do
    enterprisey(1000, body, context)
  end
end
