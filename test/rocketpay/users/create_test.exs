defmodule Rocketpay.Users.CreateTest do
  use Rocketpay.DataCase, async: true

  alias Rocketpay.User
  alias Rocketpay.Users.Create

  describe "call/1" do
    test "when all params are valid, return an user" do
      params = %{
        name: "Murilo",
        password: "123321",
        nickname: "mugres",
        email: "murilo@murilo.com",
        age: 27
      }

      {:ok, %User{id: user_id}} = Create.call(params)

      user = Repo.get(User, user_id)

      assert %User{name: "Murilo", age: 27, id: ^user_id} = user
    end

    test "when there are invalid params, return an eror" do
      params = %{
        name: "Murilo",
        nickname: "mugres",
        email: "murilo@murilo.com",
        age: 15
      }

      expected_response = %{
        age: ["must be greater than or equal to 18"],
        password: ["can't be blank"]
      }

      {:error, changeset} = Create.call(params)

      assert expected_response == errors_on(changeset)
    end
  end
end
