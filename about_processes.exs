defmodule AboutProcesses do
  use Koans

  think "Spawning a process executes a function" do
    spawn __?
    # Hint: Print something to the screen so you know something happened!
  end

  think "Spawning a process returns a process ID (PID)" do
    pid = spawn fn -> IO.puts "I am running in another process" end

    assert_? is_pid(pid)
  end

  think "You are a process" do
    assert_? is_pid(self)
  end

  think "Processes send and receive messages" do
    send self, {:hello, "world"}

    receive do
      {:hello, message} -> assert message == __?
    end
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
