# FastAPI with multiple sub-modules

Shows how to structure an application with multiple sub-modules (directories).

Also demostrates how to extend with "side apps" outside of the FastAPI app to test/re-use parts of the FastAPI app ("cli.py").

The "cli.py" script also shows how to include a "python shebang" to make it easier to invoke.

## Refs

* <https://fastapi.tiangolo.com/tutorial/bigger-applications/#an-example-file-structure>
* <https://realpython.com/python-shebang/>

## How to run

### Fast API

Enter the repo/workspace root directory. Ensure that you have the .venv activated with "requirements.txt" installed.

In one shell:

```shell
fastapi dev app/main.py
```

In another shell:
```shell
./test-with-curl.sh
```

Also possible to visit <http:localhost:8080/docs> via the browser.

### CLI

```shell
./cli.py "example string"
```

_**Example**:**_

```console
(.venv) $ ./cli.py ulf
Processing...
3
Done
```

## VS Code details

* This project includes a simple Python [devcontainer](https://code.visualstudio.com/docs/devcontainers/containers) definition. Use it if you like (and have Docker available).
* Create Python (.venv) environment in the workspace root
  * Install "app/requirements.txt" in .venv
* Ensure that the desired environment is active (lower right corner)
  * Alt/also, open terminal and confirm that `which pip` indicates the .venv variant
* Several debug configurations are available in the [.vscode/launch.json](./.vscode/launch.json) file
  * Debugging FastAPI application (with reloading when files change)
  * Debugging the "current file" (OK for "cli.py" but doesn't work for FastAPI app)
    * Option to provide argument via input field (e.g. required for "cli.py")
  * Debugging "cli.py" (shortcut instead of "current file" so that it doesn't have to be the active file)


## Notes

> A "relative import":
>
> ```python
> from .routers import items, users
> ```
>
> An "absolute import":
>
> ```python
> from app.routers import items, users
> ```
>
> 👉 <https://docs.python.org/3/tutorial/modules.html>

