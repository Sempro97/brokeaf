import os

import click
from pyfiglet import Figlet

current_path = os.getcwd()
figlet = Figlet(font="small")


def print_title(text):
    text = figlet.renderText(text)
    print(text)


@click.command()
@click.option("--html", is_flag=True)
@click.option("--php", is_flag=True)
def main(html, php):
    if html:
        os.system("docker build ./docker/linter/ -t linter")
        os.system(f"docker run --rm --volume {current_path}/source:/source linter")
    if php:
        print_title("PHP CS Fixer")
        os.system(
            f"docker run --rm --volume {current_path}/source:/source cytopia/php-cs-fixer fix /source"
        )

        print_title("PHP Parallel Lint")
        os.system(
            f"docker run --rm --volume {current_path}/source:/source milchundzucker/php-parallel-lint /source"
        )

        print_title("PHPCS")
        os.system(
            f"docker run --rm --volume {current_path}/source:/source cytopia/phpcs --extensions=php /source"
        )

        print_title("PHPStan")
        os.system(
            f"docker run --rm --volume {current_path}/source:/app ghcr.io/phpstan/phpstan analyse --level 8 ."
        )


if __name__ == "__main__":
    main()
