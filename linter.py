import os

from pyfiglet import Figlet

current_path = os.getcwd()
figlet = Figlet(font="small")


def print_title(text):
    text = figlet.renderText(text)
    print(text)


os.system("docker build ./docker/linter/ -t linter")
os.system(f"docker run --rm --volume {current_path}/source:/source linter")

print_title("PHP CS Fixer")
php_cs_fixer = "/usr/local/bin/php-cs-fixer fix --using-cache no /source"
os.system(
    f"docker run --rm --volume {current_path}/source:/source ekreative/php-cs-fixer {php_cs_fixer}"
)

print_title("PHP Parallel Lint")
os.system(
    f"docker run --rm --volume {current_path}/source:/source milchundzucker/php-parallel-lint /source"
)

print_title("PHPStan")
os.system(
    f"docker run --rm --volume {current_path}/source:/app ghcr.io/phpstan/phpstan analyse --level 8 ."
)
