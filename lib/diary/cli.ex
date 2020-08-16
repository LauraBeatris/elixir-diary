defmodule Diary.CLI do
  @moduledoc """
    Outputs the diary notes on the CLI
  """

  import Diary.CLI.Constants

  @doc """
    Outputs a greeting to the user
  """
  @doc since: "0.1.0"
  @spec greeting :: nil
  def greeting do
    today = Timex.today
    formatted_date = "#{Timex.month_name(today.month)} #{Timex.format!(today, "{D}, {YYYY}")}"

    IO.puts("Welcome to your diary! 📖")
    IO.puts("Today is #{formatted_date}")
  end

  @doc """
    Outputs a menu to the user
  """
  @doc since: "0.1.0"
  @spec menu :: nil
  def menu do
    IO.puts("---- Menu 🕹 | Choose an option ----")
    IO.puts(" ")
    IO.puts("Write #{read_notes_answer()} to read notes and #{create_note_answer()} to create a note")
    IO.puts(" ")

    question_result = IO.gets("Enter the choosed option: ") |> String.trim

    IO.puts(" ")

    if (question_result == read_notes_answer()) do
      Diary.CLI.read_notes
    end

    if (question_result == create_note_answer()) do
      Diary.CLI.create_note
    end

    IO.puts(" ")
  end

  @doc """
    Gets the input of the note value and creates a note
  """
  @doc since: "0.1.0"
  @spec create_note :: Note
  def create_note do
    note_value = IO.gets("Enter a note: ") |> String.trim

    Diary.create_note(note_value)
  end

  @doc """
    Loads the notes from the filesystem
    and outputs it to
  """
  @doc since: "0.1.0"
  @spec read_notes :: nil
  def read_notes do
    notes = Diary.load_notes

    if (length(notes) <= 0) do
      IO.puts("You don't have any notes")
    end

    for note <- notes do
      IO.puts(note.value)
    end
  end

  @doc """
    Main function resposible to control the execution
    of the CLI logic
  """
  @doc since: "0.1.0"
  def main(_) do
    Diary.CLI.greeting

    IO.puts(" ")

    Diary.CLI.menu
  end
end
