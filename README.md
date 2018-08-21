# AgilePortal  [![codebeat badge](https://codebeat.co/badges/bf0b6e71-bfd5-433c-ab7f-b2587e508e61)](https://codebeat.co/projects/github-com-lilanga-agileportal-master)

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Use Vagrant

To use vagrant as development environment, simply use following commands

  * Start the vagrant box with `vagrant up`
  * Connect to the box using ssh with `vagrant ssh`
  * Go to /Vagrant folder to start Phoenix server as mentioned above

Box has postgresql and phoenix framework is set up properly.
