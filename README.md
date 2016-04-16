Elixir Koans
============

The Elixir Koans walk you along the path to enlightenment in order to learn Elixir.
The goal is to learn the Elixir language, syntax, structure, and some common functions and libraries.
We also teach you culture by basing the koans on tests.
Testing is not just something we pay lip service to, but something we live.
Testing is essential in your quest to learn and do great things in Elixir.

The Structure
-------------

The koans are broken out into areas by file, strings are introduced in about_string.rb, tuples are covered in about_tuples.rb, etc.
They are presented in order with the `mix learn` task.

Each koan builds up your knowledge of Elixir and builds upon itself.
It will stop at the first place you need to correct.

Some koans simply need to have the correct answer substituted for an incorrect one.
Some, however, require you to supply your own answer.
If you see the method `__?` (a double underscore question mark) listed, it is a hint to you to supply your own code in order to make it work correctly.
If you see the assertion `assert_?`, it is a hint that you need to supply the correct assertion or refutation.

Installing Elixir
-----------------

The best source of truth for installation instructions can be found [on elixir-lang.org][install].

Enlightenment
-------------

The koans are run via [Mix], Elixir's task runner.

1. Clone the repository.

   ```
   $ git clone https://github.com/iamvery/elixir-koans.git
   $ cd elixir-koans
   ```

2. Run the mix task.

   ```
   $ mix learn
   ```

   Note: Currently the koans generate a lot of warnings. These can probably be ignored (https://github.com/iamvery/elixir-koans/issues/4).

### Annotations

For your convenience, some annotations are available for examples.

* Skipping examples

  ```elixir
  @tag :skip
  think "This example will not run" do
    # ...
  ```

* Focusing on examples

  ```elixir
  @tag :focus
  think "Only examples tagged with focus will run" do
    # ...
  ```

Inspiration
-----------

The Elixir koans are inspired by the work of beloved [Jim Weirich][jim] and his [Ruby Koans][ruby-koans].
This particular set of Elixir Koans is heavily inspired by [this other koans project][other-koans] which appears to be no longer maintained.


[install]: http://elixir-lang.org/install.html
[Mix]: http://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html
[jim]: https://github.com/jimweirich
[ruby-koans]: https://github.com/neo/ruby_koans
[other-koans]: https://github.com/dojo-toulouse/elixir-koans
