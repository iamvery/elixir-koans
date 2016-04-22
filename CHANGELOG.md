# Change Log
All notable changes to this project will be documented in this file.

## [Unreleased]

### Changed
- Reorganize supporting code (https://github.com/iamvery/elixir-koans/pull/39)
- Add supervisor, moving Koans.Examples to be supervised (https://github.com/iamvery/elixir-koans/pull/39)
- Remove Koans.Check (https://github.com/iamvery/elixir-koans/pull/39)
- Actual value on left, expected on right (https://github.com/iamvery/elixir-koans/pull/14)
- Prettier user feedback when running koans (https://github.com/iamvery/elixir-koans/pull/37)
- Various house cleanings (https://github.com/iamvery/elixir-koans/pull/36)

### Added
- Dynamically inject answers when tests run to validate all lessons. I can't believe it worked! (https://github.com/iamvery/elixir-koans/pull/21)
- Example of variable pinning in match (https://github.com/iamvery/elixir-koans/pull/36)
- Example of accessing second key with the same name in keyword list (https://github.com/iamvery/elixir-koans/pull/36)
- Lesson about binaries (https://github.com/iamvery/elixir-koans/pull/33)
- Examples about dot access (https://github.com/iamvery/elixir-koans/pull/30/)
- Lesson about atoms (https://github.com/iamvery/elixir-koans/pull/26)
- Lesson about sigils (https://github.com/iamvery/elixir-koans/pull/27)
- Lesson about lists and maps (https://github.com/iamvery/elixir-koans/pull/25)

## [v2]

### Added
- Example of referencing a named function (https://github.com/iamvery/elixir-koans/pull/16)
- Lesson about processes (https://github.com/iamvery/elixir-koans/pull/16)
- Examples may now be skipped by adding `@tag :skip` before them. (https://github.com/iamvery/elixir-koans/pull/13)
- Examples may now be focused on by adding `@tag :focus` before them. (https://github.com/iamvery/elixir-koans/pull/13)

### Changed
- Various rewording, additional examples, and general housekeeping throughout remaining lessons (https://github.com/iamvery/elixir-koans/pull/17)
- Rewording and additional examples throughout "asserts" and "numbers and booleans" (https://github.com/iamvery/elixir-koans/pull/12)

## [v1]

### Fixed
- Warnings produced when running koans (https://github.com/iamvery/elixir-koans/pull/4)

### Added
- Lessons ported from https://github.com/dojo-toulouse/elixir-koans
- Improved koans runner

[Unreleased]: https://github.com/iamvery/elixir-koans/compare/v2...HEAD
[v2]: https://github.com/iamvery/elixir-koans/compare/v1...v2
[v1]: https://github.com/iamvery/elixir-koans/compare/affa90...v1
