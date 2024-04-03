defmodule DemoWeb.PageController do
  use DemoWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.

    conn
    |> foo()
    |> render(:home, layout: false)
  end

  defp foo(conn) do
    "Pry is broken?"
    |> String.split()
    |> Enum.count()
    |> IO.inspect()
    conn
  end

  def pry do
    a = 10

    require IEx
    IEx.pry

    b = 5
    c = a + b

    {:ok, c}
  end
end
