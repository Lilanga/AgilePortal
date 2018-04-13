defmodule AgilePortal.UserTest do
  use AgilePortal.ModelCase

  alias AgilePortal.User

  @valid_attrs %{email: "some email", firstName: "some firstName", is_admin: true, lastName: "some lastName", password_hash: "some password_hash"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
