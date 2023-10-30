defmodule Blog.Users.UserTest do
  use Blog.DataCase

  alias Blog.Users.User

  describe "changeset/2" do
    test "when all arguments are valid, returns a valid changeset" do
      attrs = %{
        username: "Teste"
        email: "teste@teste.com"
        age: 18
      }

      response = User.changeset(attrs)

      assert %Ecto.Changeset{errors: [], valid?: true} = response
    end

    test "when arguments are invalid, returns an invalid changeset" do
      attrs = %{
        username: "Teste"
        email: "teste@teste.com"
        age: 16
      }

      response = User.changeset(attrs)

      assert %Ecto.Changeset{errors: [], valid?: false} = response
    end
  end
end
