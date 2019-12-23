[Neovim](https://neovim.io/)
==============================================

[Going All In with Neovim Part 1](https://www.youtube.com/watch?v=spwkQ_rVzHc)
---------------------------

- Hard fork of Vim
- Refactor of original Vim code
- Future of Vim

- Encourage contributions
- Enable advanced UIs without modification to core
- Extensible via plugin architecture
- Uses libuv to remove a lot of boilerplate in Vim

### libuv
- Unicorn Velociraptor
- Cross platform io

### Floobits
- Allows remote pairing sessions across IDEs

### Founders
- Matt Kaniaris
- Geoff Greer
- Thiago de Arruda

### BountySource
- Contribute to open source projects

### Codebase
- Written in C89

### Enable advanced UIs
- Neovim relies on message back RPCs (msgpack-rpc (Vim API) as api fo GUIs to talk to Neovim
- Treat Neovim as a server and open a socket to collaborate

### vim-mode powered plugins
- Atom
- VSCode
Have vim plugins that support Neovim

### msgpack-rpc (Vim API)
- Execute Vim commands
- Evaulate Vimscript expressions
- Manipulate buffers, windows and tabs
- Receive/handle editor events

### NeoVim Features
- Modern GUIS (using msgpack-rpc)
- Write Plugins in Any Languar
- New Plugin Architecture based on CoProcesses(everything runs in its own process so as to not block other processes)
- Embedded Scriptable Terminal Emulator
- Shared Data between editor instances
- XDG Spec Implementation

### Job Control
- Allows use to run different processes while still runing Vim
- Asynchronous linters, formatters, etc.

### Support
- Mouse support is extensive

### Vim1
- Recommended color theme

### TMUX
- Not backwards compatible

### Plugins
- NeoTerm
- vim-test
- deoplete.nvim
- nvim-completion-manager
- asyncomplete
- WebComplete (w/ Deoplete)
- LanguageClient-neovim
- ALE
- NVimux as a TMUX replacement

[Going All In with NeoVim - Part 2](https://www.youtube.com/watch?v=D0T00ABs4js)
----------------------------------------------

