defmodule ElixirTalkTest do
  use ExUnit.Case

  setup_all do
    IO.puts "connect to beanstalkd first"
    {:ok, _} = ElixirTalk.connect "10.1.1.5"
    :ok
  end


  test "`put` " do
    {:inserted, id} = ElixirTalk.put "hello world"
    assert is_integer(id) == true
  end
end
