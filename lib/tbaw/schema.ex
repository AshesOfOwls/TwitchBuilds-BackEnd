defmodule TbawWeb.Schema do
  use Absinthe.Schema

  alias TbawWeb.UsersResolver

  object :user do
    field :id, non_null(:id)
    field :username, non_null(:string)
  end

  query do
    field :all_users, non_null(list_of(non_null(:user))) do
      resolve &UsersResolver.all_users/3
    end
  end
end