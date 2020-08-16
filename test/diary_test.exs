defmodule DiaryTest do
  use ExUnit.Case

  test "should create a note with a valid value" do
    note = Diary.create_note("A valid note")

    assert note == :ok
  end
end
