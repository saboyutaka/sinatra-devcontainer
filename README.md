# devcontainer for Ruby 2.7

Ruby 2.7 の開発環境用の devcontainer

- Intellisense: [solargraph](https://github.com/castwide/solargraph)
- formatter: [rufo](https://github.com/ruby-formatter/rufo)
- debugger: [ruby-debug-ide](https://github.com/ruby-debug/ruby-debug-ide), [solargraph](https://github.com/castwide/solargraph)
- erb formatter: erb-formatter
- HTML, CSS, JS formatter: [Prettier](https://prettier.io/)

## 構成

docker-compose で構成

- ruby(FROM ruby:2.7-bullseye)

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
