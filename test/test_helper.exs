ExUnit.start()

Enum.each Koans.Lessons.all, fn lesson ->
  try do
    Code.load_file("answers/#{lesson}")
    Code.load_file(lesson)
  rescue
    Code.LoadError -> raise """
      You must provide answers for all lessons. Make sure that any new lesson
      has a corresponding answer module defined in `answers/`. For example,
      a lesson `about_giggles.exs` should have answers defined in
      `answers/about_giggles.exs`. Look at existing lessons as example.
    """
  end
end
System.at_exit fn 0 -> Koans.Runner.run end
