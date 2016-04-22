ExUnit.start()

Enum.each Koans.Lessons.all, fn lesson ->
  Code.load_file("answers/#{lesson}")
  Code.load_file(lesson)
end
System.at_exit fn 0 -> Koans.Runner.run end
