defmodule Diary do
  @moduledoc """
    Defines the functions responsible
    to control the notes of a diary
  """
  @moduledoc since: "0.1.0"

  require Note
  import Notes.Constants

  @doc """
    Gets the user name via an input
  """
  @doc since: "0.1.0"
  @spec get_user_name() :: String.t()
  def get_user_name do
    IO.gets("Write your name: ") |> String.trim
  end

  @doc """
    Loads the notes from the file system
  """
  @doc since: "0.1.0"
  @spec load_notes() :: list(Note)
  def load_notes() do
    try do
      case File.read(notes_filesystem_path()) do
        { :ok, binary } -> :erlang.binary_to_term(binary)
        |> Enum.map(&(Poison.decode!(&1, as: %Note{value: ""})))

        { :error, reason } -> raise reason
      end
    rescue
      error in RuntimeError -> IO.puts("An error occured: #{error.message}")
    end
  end


  @doc """
    Saves a diary note to the file system
  """
  @doc since: "0.1.0"
  @spec save_note(Note) :: :atom
  def save_note(note) do
    try do
      binary = :erlang.term_to_binary([note])
      File.write!(notes_filesystem_path(), binary)
    rescue
      error in RuntimeError -> IO.puts("An error ocurred: #{error.message}")
    end
  end

  @doc """
    Creates a note with a given string value
    and saves it to the file system
  """
  @doc since: "0.1.0"
  @spec create_note(String.t()) :: Note
  def create_note(value) do
    note = Poison.encode!(Note.new(value))
    Diary.save_note(note)
  end

  @doc """
    Loads the notes from the file system and read
    them on a friendly format
  """
  @doc since: "0.1.0"
  @spec read_notes() :: nil
  def read_notes do
    notes = Diary.load_notes

    for note <- notes do
      IO.puts(note.value)
    end
  end
end
