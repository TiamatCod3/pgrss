# Rails on Repl.it

This is a template to get you started with Rails on Repl.it. It's ready to go so you can just hit run and start coding!

This template was generated using `rails new` (after you install the `rails` gem from the packager sidebar) so you can always do that if you prefer to set it up from scratch. The only had two make config changes we had to make to run it on Repl.it:

- bind the app on `0.0.0.0` instead of `localhost` (see `.replit`)
- allow all hosts (see `config/environments/development.rb`)
- allow the app to be iframed (see `config/application.rb`)

## Running the app

Simple hit run! You can edit the run command from the `.replit` file.

## Running commands

Start every command with `bundle exec` so that it runs in the context of the installed gems environment. The console pane will give you output from the server but you can run arbitrary command from the shell without stopping the server.

## Database

SQLite would work in development but we don't recommend running it in production. Instead look into using the built-in [Repl.it database](http://docs.repl.it/misc/database). Otherwise you are welcome to connect databases from your favorite provider. 

## Help

If you need help you might be able to find an answer on our [docs](https://docs.repl.it) page. Alternatively you can [ask in the community](https://repl.it/talk/ask). Feel free to report bugs [here](https://repl.it/bugs) and give us feedback [here](https://repl.it/feedback).

## Utilização do Bootstrap
Atenção à alteração da instalação
### console:

```
yarn add bootstrap

yarn add @popperjs/core
```

---
### application.html.erb:

```
<%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %> 
<%= stylesheet_pack_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %> 
<%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %>
```

---

### application.js 

```
import 'bootstrap/dist/js/bootstrap'  
import 'bootstrap/dist/css/bootstrap'
import '../stylesheets/application'
```
---
https://dev.to/yarotheslav/install-bootstrap-5-with-ruby-on-rails-6-replace-bootstrap-4-2bf9

# Esquema
![esquema](./app/assets/images/PGRSS.png)

# Criação do produto
## Product
1. code - string
1. description - string
1. presentation - string
1. concentration - string
1. controlled - boolean
1. classification - id_classification (FK)
---
`rails g scaffold Product code description presentation concetration controlled:boolean classification_id:references` 
---

# Criação da classificação
## Classification
1. description - string

---
`bundle exec rails g scaffold Classification description`
---

# Criação da entrada
## Entrance
1. batch_id - integer (FK)
1. invoice_id - integer (FK)
1. entered_at - datetime 
1. quantity - integer
1. unitaryValue - float

# Criação da nota fiscal
## Invoice
1. code 
1. supplier_id - integer (FK)
1. origin_id -integer (FK)

# Criação da origem
## Origin
1. description - string 

# Criação do fornecedor
## Supplier 
1. abbreviation - string 
1. description 

# Criação do lote
## Batch
1. code - string
1. quantity - integer
1. fabricated_at - datetime
1. expires_at - datetime
1. exchangeble - boolean
1. brand - string 
1. lost_type -lost_type_id (FK)
1. manufacturer - id_supplier (FK)
1. program - id_program (FK)
1. product - id_product (FK)

# Criação do lacre
## Seal 
1. code - string
1. sealWeight - float
1. bagWeight - float 
1. containerWeight - float 
1. totalWeight - float
1. residue - residue_id (FK)
1. batch - batch_id (FK)

# Criação do programa
## Program
1. description - string


# Criação do documento
1.


# Criação do departamento

# Criação do assunto

# Criação da responsabilidade





# Criação do plano de descarte

# Criação do resíduo

# Criação da marca


