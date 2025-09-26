> [!NOTE] 
>
> 使用 `bundle exec jekyll serve --watch` 在本地 `http://127.0.0.1:4000/website/` 查看网站. 此时网址是 `localhost:...`
>
> 使用 `bundle exec jekyll build` 建立网站, 此时网址是 `github.io....`. 继而发布.
>
> GiiHub Page 部署大概延迟三分钟.

# jekyll-latex

<p align="center">
    <img src="./assets/jekyll_latex_cover_art.png">
</p>

  [![LICENSE](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE) ![GENERATOR](https://img.shields.io/badge/made_with-jekyll-blue.svg)

## Features
- LaTeX typography
- Abstract, theorems, proofs, and definitions
- MathJax
- Google Analytics
- Profile photo
- Compatible with Jekyll 3.x and Github Pages
- Responsive layout
- Supports Jekyll's SCSS preprocessor

## Installation
```
git clone https://github.com/ryanmcdermott/jekyll-latex.git

bundle install

# Change all relevant settings for your site in _config.yml

bundle exec jekyll serve --watch
```

## Credits

Based on the amazing work below:
- https://github.com/heiswayi/the-plain
- https://github.com/vincentdoerig/latex-css

## Licenses

1. This project: MIT
1. The Plain (of which this is based): MIT
1. Latex CSS: MIT