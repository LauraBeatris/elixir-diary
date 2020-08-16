defmodule Mix.Tasks.Diary do
  @moduledoc false

  use Mix.Task

  @shortdoc "Loads the notes of the diary"
  def run(args) do
    Diary.CLI.main(args)
  end
end
