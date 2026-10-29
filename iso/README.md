# HYPRL ISO

HYPRL is an early Arch Linux-based live desktop built around Hyprland. The repository now includes an automated Archiso build workflow. A successful build has to finish in GitHub Actions before an ISO artifact is available; adding a workflow does not itself prove that the image boots correctly.

## Build an ISO with GitHub Actions

1. Open the repository's **Actions** tab.
2. Select **Build HYPRL ISO**.
3. Choose **Run workflow** and run it from the `main` branch, or push a change to `iso/`, `config/`, or the workflow.
4. Wait for the workflow to finish successfully.
5. Open the completed run and download the **hyprl-iso** artifact. It contains the ISO and its SHA256 checksum.

The workflow starts from the official Archiso `releng` profile, adds HYPRL's package list and desktop configs, then builds the image. Builds can fail if Arch packages or upstream Archiso change; inspect the Actions log rather than assuming the ISO was produced.

## Live session

The current configuration attempts to start SDDM and automatically log in to the `liveuser` account. The live account password is `hyprl`. This is a temporary demo credential, not a secure installed-user password. The root account is locked by the customization script. Do not expose this live image as a production environment.

## Test before installing

Boot the ISO in a virtual machine first (for example, QEMU or VirtualBox). Check that the image boots, the graphical session starts, keyboard shortcuts work, and networking is available. This project does **not** yet provide a disk installer, hardware compatibility certification, or a verified release ISO. Do not repartition or install to your main computer based on an untested build.

## Local build (Arch Linux)

Install Archiso, then use the same official profile and overlay approach as the workflow. The workflow file is the canonical current build recipe.
