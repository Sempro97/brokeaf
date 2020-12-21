import os

import click
from pyfiglet import Figlet

current_path = os.getcwd()
figlet = Figlet(font="small")


def print_title(text):
    text = figlet.renderText(text)
    print(text)


def run_docker(folder="/source", image="", parameters=""):
    os.system(
        f"docker run --rm --volume {current_path}/source:{folder} {image} {parameters}"
    )


@click.command()
@click.option("--html", is_flag=True)
@click.option("--php", is_flag=True)
def main(html, php):
    if html:
        os.system("docker build ./docker/linter/ -t linter")
        run_docker(image="linter")
    if php:
        print_title("PHP CS Fixer")
        run_docker(image="cytopia/php-cs-fixer", parameters="fix /source")

        print_title("PHP Parallel Lint")
        run_docker(image="milchundzucker/php-parallel-lint", parameters="/source")

        print_title("PHPCS")
        run_docker(image="cytopia/phpcs", parameters="--extensions=php /source")

        print_title("PHPStan")
        run_docker(
            folder="/app",
            image="ghcr.io/phpstan/phpstan",
            parameters="analyse --level 8 .",
        )


if __name__ == "__main__":
    main()
