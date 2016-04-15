defmodule AboutProcesses do
  use Koans

  think "You are a process with a process ID" do
    pid_name = inspect(self)

    assert_? pid_name =~ ~r/#PID<\d+\.\d+\.\d+>/
  end

  think "Processes receive messages" do
    send self, {:hello, "world"}

    receive do
      {:hello, message} -> assert message == __?
    end
  end

  think "A spawned process is a function running in parallel" do
    spawn __?
    # Hint: Print something to the screen so you know something happened!
  end

  think "Processes communicate with one another" do
    echo = fn ->
      receive do
        {caller, value} -> send caller, value
      end
    end

    pid = spawn echo
    send pid, {self, "hi!"}

    receive do
      value -> assert value == __?
    end
  end
end
