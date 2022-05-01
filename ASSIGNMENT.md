# UI testing assignment

This repository contains the required files for implementing a few UI tests using Cypress testing
framework.

## Prerequisites

You will need [`docker`](https://docs.docker.com/get-docker) or
[`podman`](https://podman.io/getting-started/installation) installed. These packages are usually
available via your package manager if you're using Linux. To watch automation in
action you should have a VNC viewer installed such as `tigervnc-viewer`, `gvncviewer`, `krdc` or
`remmina`. VNC server is avaialable on `127.0.0.1:5999`.

## Usage

1. Clone the repo

```sh
git clone https://github.com/quarckster/cypress-realworld-app
```

2. Enter to the directory

```sh
cd cypress-realworld-app
```

3. Run the `start.sh` script:

```sh
./start.sh
```

4. Access the `Cypress Real World App` service under [http://localhost:8080](http://localhost:8080)
with your browser and familiarize yourself with it.

5. Connect to the VNC server whic is available on `127.0.0.1:5999`.

6. Execute the tests via Cypress Runner

7. Implement the missing tests in `cypress/tests/ui/auth.spec.ts` and make sure that they pass.
