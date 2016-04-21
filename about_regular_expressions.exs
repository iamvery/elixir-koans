defmodule AboutRegularExpressions do
  use Koans

  think "A simple regular expression" do
    regex = ~r/This [W|w]orks!/

    completion = __?

    assert ("This W" <> completion) =~ regex
    assert ("This w" <> completion) =~ regex
  end

  think "Regular expressions can use options" do
    regex = ~r/this works!/i

    assert_? "this works!" =~ regex
    assert_? "ThIs wOrKs!" =~ regex
  end

  think "Regular expressions don't have to be created with the sigil (though ~r/.../ is more idiomatic)" do
    regex = Regex.compile!(__?)

    assert regex == ~r/this works!/
  end

  think "Sigils have flexible delimiters" do
    assert __? == ~r(this works!)
  end

  think "Capture groups" do
    regex = ~r/(A|The) lazy bear slept for (\d+) months/
    text = "The lazy bear slept for 5 months"
    assert Regex.run(regex, text) == __?
  end

  think "Replacing with capture groups" do
    text = "This has vowels"
    regex = ~r/([aeiou])/
    assert Regex.replace(regex, text, "<\\1>") == __?
  end
end
