# BrokeAF

## How to start the website

1. Run the command `docker-compose up --build`

## Linter

### Requirements

1. You must have Python 3 installed and have it accessible from the CLI
2. You must have the packages `click` and `pyfiglet` installed
   - You can get them by running the following command: `pip install click pyfiglet`
3. If you are on Windows, make sure the line endings in the `start.sh` script are compatible with Unix systems (I.e. LF)

### How to use it

1. Go to the root folder of the project
2. Run the `linter.py` script with either the `--html` or `--php` flag (you can also use both at the same time)
