# devcontainer for Ruby 2.7 and PostgreSQL

Ruby 2.7 と PostgreSQL の開発環境用の devcontainer

- Intellisense: [solargraph](https://github.com/castwide/solargraph)
- formatter: [rufo](https://github.com/ruby-formatter/rufo)
- debugger: [ruby-debug-ide](https://github.com/ruby-debug/ruby-debug-ide), [solargraph](https://github.com/castwide/solargraph)
- erb formatter: erb-formatter
- HTML, CSS, JS formatter: [Prettier](https://prettier.io/)

## 利用方法
1. このリポジトリをダウンロードし、任意のプロジェクトに `.devcontainer` , `.vscode` の2つのディレクトリをコピーする。
2. VSCodeを開き、 `Reopen in Container` を実行する

## 構成

docker-compose で構成

- ruby(FROM ruby:2.7-bullseye)
- postgres(FROM postgres:latest)

### Ruby ContainerからPostgreSQLに接続する
```ruby
require "pg"

client = PG::connect(
  :host => ENV["DB_HOST"],
  :user => ENV["DB_USER"],
  :password => ENV["DB_PASSWORD"],
  :dbname => ENV["DB_DATABASE"],
)

res = client.exec("SELECT 1")
```

## VSCode extensions

- devcontainer
  - [rebornix.Ruby](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby)
  - [castwide.solargraph](https://marketplace.visualstudio.com/items?itemName=castwide.solargraph)
  - [elia.erb-formatter](https://marketplace.visualstudio.com/items?itemName=elia.erb-formatter)
- workspace
  - [esbenp.prettier-vscode](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
  - [kaiwood.endwise](https://marketplace.visualstudio.com/items?itemName=kaiwood.endwise)
  - [jduponchelle.rainbow-end](https://marketplace.visualstudio.com/items?itemName=jduponchelle.rainbow-end)

## リファレンス

- [Visual Studio Code Doc - Developing inside a Container](https://code.visualstudio.com/docs/remote/containers)
- [VS Code Solargraph Extension](https://github.com/castwide/vscode-solargraph)
- [vscode-ruby debugger](https://github.com/rubyide/vscode-ruby/blob/main/docs/debugger.md)
