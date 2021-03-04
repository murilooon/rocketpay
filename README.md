# Rocketpay

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Requests

| Tipo | Nome | Example |
| :------------- | :----------: | -----------: |
| POST | Create user   | ```curl --location --request POST 'http://localhost:4000/api/users?name=Gabriela&nickname=gabiiaaaaaaa&email=Gabaii@gabis.comaaaaa&age=27&password=123451'``` |
| POST | Deposit   | ```curl --location --request POST 'http://localhost:4000/api/accounts/ba215e2f-d255-4a6c-a92c-63b951f06d3d/deposit?value=5' --header 'Authorization: Basic YmFuYW5hOm5hbmljYTEyMw=='``` |
| POST | Withdraw   | ```curl --location --request POST 'http://localhost:4000/api/accounts/ba215e2f-d255-4a6c-a92c-63b951f06d3d/withdraw?value=5' --header 'Authorization: Basic YmFuYW5hOm5hbmljYTEyMw=='``` |
| POST | Transaction   | ```curl --location --request POST 'http://localhost:4000/api/accounts/transaction?value=5.0&from=ba215e2f-d255-4a6c-a92c-63b951f06d3d&to=7a33678d-0731-4544-92b6-730e7f6e333c' --header 'Authorization: Basic YmFuYW5hOm5hbmljYTEyMw=='``` |

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## Up postgres container

1. `docker run --name postgress -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres`

**If doesn't work:**

2. `docker rm <id>`
3. ```sudo kill -9 `sudo lsof -t -i:5432` ```
4. `docker run --name postgress -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres`

## Test

```
mix test
mix test --cover
mix coveralls.html
```
