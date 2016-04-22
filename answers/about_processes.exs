defmodule Answers.AboutProcesses do
  use Koans

  answer "Spawning a process executes a function" do
    [fn -> end]
  end

  answer "Spawning a process returns a process ID (PID)" do
    [true]
  end

  answer "You are a process" do
    [assert]
  end

  answer "Processes send and receive messages; it's like mailbox" do
    ["world"]
  end

  answer "Processes communicate with one another" do
    ["hi!"]
  end

  answer "Use tail recursion (calling a function as the very last statement) to receive multiple messages" do
    ["o", "hai"]
  end
end
