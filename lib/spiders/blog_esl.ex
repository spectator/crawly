defmodule BlogEsl do
  def init() do
    [
      start_urls: ["https://www.erlang-solutions.com/blog.html"]
    ]
  end

  def parse_item(response) do
    # IO.inspect(response, label: :response)
    IO.puts("Parsing something....")

    urls =
      response.body
      |> Floki.find("a")
      |> Floki.attribute("href")

    {:items, [%{itid: "123", title: "Blog post", body: "Awesome article"},
              %{itid: "123", title: "Blog post", body: "Awesome article"}]}
  end
end