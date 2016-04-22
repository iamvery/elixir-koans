defmodule AboutProcesses do
  use Koans

  think "Spawning a process executes a function" do
    spawn __?
    # Hint: Print something to the screen so you know something happened!
  end

  think "Spawning a process returns a process ID (PID)" do
    pid = spawn fn -> IO.puts "I am running in another process" end

    assert is_pid(pid) == __?
  end

  think "You are a process" do
    assert_? is_pid(self)
  end

  think "Processes send and receive messages; it's like mailbox" do
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

  def echo_loop do
    receive do
      {caller, value} ->
        send caller, value
        echo_loop
    end
  end

  think "Use tail recursion (calling a function as the very last statement) to receive multiple messages" do
    pid = spawn &echo_loop/0

    send pid, {self, "o"}
    receive do
      value -> assert value == __?
    end

    send pid, {self, "hai"}
    receive do
      value -> assert value == __?
    end

    Process.exit(pid, :kill)
  end
end
