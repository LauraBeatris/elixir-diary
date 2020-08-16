defmodule Note do
  @moduledoc """
    Defines the data structure of a diary note
  """

  @enforce_keys [:value]
  @derive [Poison.Encoder]
  defstruct [
    created_at: Date.utc_today,
    value: ""
  ]

  @spec new(value: String.t()) :: %Note{}
  def new(value) do
    %Note{value: value}
  end

  def update(note, value) do
    %Note{note | value: value}
  end
end
