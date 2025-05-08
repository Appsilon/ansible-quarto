# Ansible Role: Quarto

[![CI](https://github.com/Appsilon/ansible-quarto/workflows/CI/badge.svg)](https://github.com/Appsilon/ansible-role-quarto/actions/workflows/ci.yml)
[![Ansible Galaxy](https://img.shields.io/badge/ansible--galaxy-quarto-blue.svg)](https://galaxy.ansible.com/appsilon/quarto)

A role to install Quarto.

## Role Variables

The following variables are available for this role:

| Variable                | Required | Default   | Choices | Comments                                       |
|-------------------------|----------|-----------|---------|------------------------------------------------|
| quarto_versions         | no       | ["1.6.43"] |         | List of Quarto versions to install             |
| quarto_install_root_dir | no       | /opt/quarto |        | Root directory where Quarto will be installed  |
| quarto_default_version  | no       | First version in quarto_versions list | | When set, creates a symlink at /usr/local/bin/quarto pointing to this version |

## Example Playbook

```yaml
- hosts: all
  roles:
    - appsilon.quarto
```

Or with custom variables:

```yaml
- hosts: all
  roles:
    - role: appsilon.quarto
      vars:
        quarto_versions:
          - "1.6.43"
          - "1.5.29"
        quarto_install_root_dir: /usr/local/quarto
```

## Development

### Dev Container

The easiest way to contribute to this role is to use the Dev Container. This requires:

* [VS Code](https://code.visualstudio.com/)
* [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
* [Docker](https://www.docker.com/)

This dev container includes all the dependencies required to work on the role.

### Alternative: Local Development

If you prefer not to use the Dev Container, you can develop locally with the following steps:

#### Dependencies

To execute tests locally, it is necessary to install the following
dependencies:

* [Python](https://www.python.org/downloads/)
* [Molecule](https://molecule.readthedocs.io/en/latest/installation.html)

#### Preparing the Environment

Create a Python environment:

```bash
python3 -m venv .venv
```

Activate the environment:

```bash
source .venv/bin/activate
```

Install molecule (and its dependencies) inside the environment:

```bash
python3 -m pip install -r requirements.txt
```

### Running

```bash
molecule test
```

To perform quick test after some modification:

```bash
molecule create
molecule converge
molecule verify
```

To log into the running instance for troubleshooting purposes:

```bash
molecule login
```

At the end of the test, destroy the environment:

```bash
molecule destroy
```

## License

MIT

## Author Information

[`Appsilon`](https://appsilon.com/)
