# Portfolio
Now in Hugo, because I am bad at frontend development.

## Initializations Steps

1. Create boilerplate using `hugo new site`

    ```
    $ cd .. # exit out of current repository
    $ docker run --rm -it -v $(pwd):/src hugomods/hugo:std-dart-sass-non-root new site portfolio-hugo --force
    ```

1. Install and use chosen theme (current: [Nightfall](https://themes.gohugo.io/themes/hugo-theme-nightfall/))
    ```
    make install-theme
    make update-theme
    ```

1. Start the development environment
    ```
    make start
    ```