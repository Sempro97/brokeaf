import os

os.system("docker build ./docker/linter/ -t linter")
current_path = os.getcwd()
os.system(f"docker run --rm --volume {current_path}/source:/source linter")
