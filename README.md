# Personal Website for Abate
This repository controls the content for my personal webpage found at [abatedemey.com](https://abatedemey.com). This website is hosted using github-pages. 

## Contents

- [Usage](#usage)
- [Options](#options)
  - [Sidebar menu](#sidebar-menu)
  - [Sticky sidebar content](#sticky-sidebar-content)
  - [Themes](#themes)
  - [Reverse layout](#reverse-layout)
- [Development](#development)
- [Author](#author)
- [License](#license)


## Background

The design of the webpage is based on the theme [Hyde](https://github.com/poole/hyde), an open source template. The website is built using [Jekyll](https://jekyllrb.com/docs/)



## Installation

sudo apt-get install ruby ruby-all-dev

# Ruby exports
`export GEM_HOME=$HOME/gems`
`export PATH=$HOME/gems/bin:$PATH`

`gem install jekyll-paginate`
https://jekyllrb.com/docs/

## Developing
`jekyll build`
`jekyll serve`

To publish changes to the website, build the Jekyll files to the `docs/` subdirectory as such:
`jekyll build --destination docs/`

