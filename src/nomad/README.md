# Development Container for Nomad Project

## Introduction

This project supports a Development Container (devcontainer), which provides a fully configured development environment for the Nomad project. This feature leverages Docker and Visual Studio Code's Remote - Containers extension to ensure a consistent, reproducible, and isolated setup for developers.

## Requirements

- Visual Studio Code
- Remote - Containers extension for VS Code
- Docker

## Getting Started

1. Install Visual Studio Code, Docker, and the Remote - Containers extension.
2. Clone the project repository to your local machine.
3. Open the project folder in VS Code.
4. When prompted, reopen the project in a container (or use the Command Palette (`Ctrl+Shift+P`) and select "Remote-Containers: Open Folder in Container...").
5. Once the container is built and started, you can begin development right away.

## Features

- **Pre-configured Environment**: The devcontainer includes all necessary dependencies and configurations for the Nomad project, ensuring that all developers work in an identical setup.
- **Isolation**: Development takes place within a Docker container, minimizing conflicts between project dependencies and the host system.
- **Easy to Share and Reproduce**: New team members can get started quickly, and the environment can be replicated across different machines with ease.

## Customization

To customize the devcontainer setup, you can modify the `.devcontainer/devcontainer.json` and `Dockerfile` located in the `src/nomad` directory. These files control the container's configuration, including installed software, extensions, and port forwarding settings.

## Troubleshooting

- **Container fails to build**: Ensure Docker is running and you have internet access. Check the Dockerfile for any errors.
- **Extensions not loading**: Verify that the extensions are correctly listed in the `devcontainer.json` file.

For more detailed troubleshooting, refer to the [Remote - Containers documentation](https://code.visualstudio.com/docs/remote/containers).
