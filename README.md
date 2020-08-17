<p align="left">
   <img src="./.github/docs/logo.png" width="150px"/>
</p>

# Elixir Diary

> Create and list notes of your diary 

[![Author](https://img.shields.io/badge/author-LauraBeatris-4B88D5?style=flat-square)](https://github.com/LauraBeatris)
[![Languages](https://img.shields.io/github/languages/count/LauraBeatris/elixir-diary?color=%234B88D5&style=flat-square)](#)
[![Stars](https://img.shields.io/github/stars/LauraBeatris/elixir-diary?color=4B88D5&style=flat-square)](https://github.com/LauraBeatris/elixir-diary/stargazers)
[![Forks](https://img.shields.io/github/forks/LauraBeatris/elixir-diary?color=%234B88D5&style=flat-square)](https://github.com/LauraBeatris/elixir-diary/network/members)
[![Contributors](https://img.shields.io/github/contributors/LauraBeatris/elixir-diary?color=4B88D5&style=flat-square)](https://github.com/LauraBeatris/elixir-diary/graphs/contributors)

---
<p align="center">
   <img src="./.github/docs/cli-example.gif" width="500"/>
</p>


<p align="center">
   <a href="https://laurabeatris.github.io/elixir-diary/Diary.html">Check out the docs</a>
</p>

---


# :pushpin: Table of Contents

* [Installation](#construction_worker-installation)
* [Usage](#pushpin-usage)
* [Development](#building_construction-development)
* [Found a bug? Missing a specific feature?](#bug-issues)
* [Contributing](#tada-contributing)
* [License](#closed_book-license)


# :construction_worker: Installation

Make sure you have [Elixir](https://elixir-lang.org/) installed. If you're on a Mac, just run ``brew install elixir``

Run ``mix deps.get`` to install the dependencies defined inside ``mix.exs``

# :pushpin: Usage

Run [mix diary](https://github.com/LauraBeatris/elixir-diary/blob/master/lib/mix/tasks/diary.ex)

```
$ mix diary
Welcome to your diary! 📖
Today is August 16, 2020
{...}
```

# :building_construction:	Development

- Start ``mix test.watch`` and develop TDD or run tests only once with ``mix test``
- To give the code a try in the REPL use ``iex -S mix`` and try the this:

```
Diary.create_note("Testing")
```

- Format code using ``mix format``
- Lint code using ``mix credo`` and ``mix dialyzer``

# :bug: Issues

Feel free to **file a new issue** with a respective title and description on the the [Elixir Diary](https://github.com/LauraBeatris/elixir-diary/issues) repository. If you already found a solution to your problem, **I would love to review your pull request**! Have a look at our [contribution guidelines](https://github.com/LauraBeatris/elixir-diary/blob/master/CONTRIBUTING.md) to find out about the coding standards.

# :tada: Contributing

Check out the [contributing](https://github.com/LauraBeatris/elixir-diary/blob/master/CONTRIBUTING.md) page to see the best places to file issues, start discussions and begin contributing.

# :closed_book: License

Released in 2020

This project is under the [MIT license](https://github.com/LauraBeatris/elixir-diary/master/LICENSE).

Made with love by [Laura Beatris](https://github.com/LauraBeatris) 💜🚀
