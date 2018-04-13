defmodule AgilePortalWeb.UserController do
  use AgilePortalWeb, :controller

  alias AgilePortal.Repo
  alias AgilePortal.User

  def show(conn, %{"id" => id}) do
    user = Repo.get!(User, id)
    render(conn, "show.html", user: user)
  end

  def new(conn, params) do
    changeset = User.changeset(%User{}, params)
    render conn, "new.html", changeset: changeset
  end

  plug :scrub_params, "user" when action in [:create]
  def create(conn, %{"user" => user_params}) do
    changeset = %User{} |> User.registration_changeset(user_params)

    case Repo.insert(changeset) do
      {:ok, user} ->
        conn
        |> put_flash(:info, "#{user.firstName} created!")
        |> redirect(to: user_path(conn, :show, user))
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
     end

  end
end
