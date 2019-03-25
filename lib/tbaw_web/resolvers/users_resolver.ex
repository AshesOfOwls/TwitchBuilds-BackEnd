defmodule TbawWeb.UsersResolver do
  alias Tbaw.Users

  def all_users(_root, _args, _info) do
    users = Users.list_users()
    {:ok, users}
  end
end