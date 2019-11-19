# [PDF form field documentation](https://vanhackton-2019-isaacisrael.herokuapp.com/)

The objective of this challenge is to automate some daily task of filling out [immigration PDF](https://catalogue.servicecanada.gc.ca/apps/EForms/pdf/en/ESDC-EMP5624.pdf) forms. We need to be able to fill out a specific PDF form using data from the database.

#### Requeriments

You'll need a working `pdftk` binary. Either get a binary package from
http://www.pdflabs.com/tools/pdftk-server/ and install it, or run
`apt-get install pdftk` if you're on Debian or similar.

#### Commands

You can run the application with the

```bash
rails s
```

And You can test the application with the

```bash
rspec
```

#### Base URL

The base URL of the API is `http://localhost:3000/`.
