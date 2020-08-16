defmodule Diary.CLI do
  @moduledoc """
    Outputs the diary notes on the CLI
  """

  def main(_) do
    name = Diary.get_user_name

    today = Timex.today
    formatted_date = "#{Timex.month_name(today.month)} #{Timex.format!(today, "{D}, {YYYY}")}"

    IO.puts("#{name}, Welcome to your diary! 📖")
    IO.puts("Today is #{formatted_date}")
    IO.puts(" ")

    Diary.read_notes
  end
end
