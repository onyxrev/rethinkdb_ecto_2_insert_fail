defmodule User do
  use Ecto.Schema

  # You must define your primary-key and foreign-key types as :binary_id
  @primary_key {:id, :binary_id, autogenerate: false}
  @foreign_key_type :binary_id

  schema "users" do
    field :name, :string
    field :age, :integer
    timestamps
  end
end
