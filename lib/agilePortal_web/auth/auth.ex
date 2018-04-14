defmodule AgilePortal.Auth do

  import Comeonin.Bcrypt, only: [checkpw: 2, dummy_checkpw: 0]
  alias AgilePortal.User
  alias AgilePortal.Repo

  def login(conn, user) do
    conn
    |> Guardian.Plug.sign_in(user)
  end

  def login_by_email_and_password(conn, email, given_pass) do
     # try to get user by unique email from DB
    user = Repo.get_by(User, email: email)

    # examine the result
    cond do
      # if user was found and provided password hash equals to stored hash
      user && checkpw(given_pass, user.password_hash) ->
        {:ok, login(conn, user)}
       # else if we just found the user
      user ->
        {:error, :unauthorized, conn}
      # otherwise
      true ->
        dummy_checkpw
        {:error, :not_found, conn}
    end
  end

  def logout(conn) do
    Guardian.Plug.sign_out(conn)
  end

end
