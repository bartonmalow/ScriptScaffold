# Recommend Extensions Script

## Summary

The `recommendextensions.sh` script automates the installation of recommended Visual Studio Code extensions listed in a `.vscode/extensions.json` file. This script ensures that all team members or users have a consistent development environment by installing the necessary extensions.

## Prerequisites

- Visual Studio Code must be installed.
- `jq` must be installed for parsing JSON files.

## Installation

1. Ensure that `jq` is installed on your system. You can install it using Homebrew on macOS:

    ```sh
    brew install jq
    ```

2. Clone the repository containing the script:

    ```sh
    git clone https://github.com/yourusername/yourrepository.git
    ```

3. Navigate to the directory containing the script:

    ```sh
    cd yourrepository
    ```

## Usage

1. Ensure that you have a `.vscode/extensions.json` file in your project directory with the recommended extensions listed.
2. Run the script:

    ```sh
    ./recommendextensions.sh
    ```

## Example `extensions.json` File

Here is an example of what your `.vscode/extensions.json` file might look like:

```json
{
    "recommendations": [
        "ms-python.python",
        "esbenp.prettier-vscode",
        "dbaeumer.vscode-eslint"
    ]
}