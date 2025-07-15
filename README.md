# Installing Homebrew on macOS

Homebrew is a powerful package manager for macOS that lets you easily install and manage software from the command line. This guide walks you through installing Homebrew on your Mac.

## Prerequisites
- A Mac running macOS Ventura or later (works on older versions too)
- Administrator access
- An internet connection

## Step 1: Open Terminal
Open Terminal using one of the following methods:
- Navigate to `Applications > Utilities > Terminal`
- Press `Cmd + Space`, type `Terminal`, and hit Enter

## Step 2: Install Xcode Command Line Tools
Run the following command in the Terminal:

```bash
xcode-select --install
```

A prompt will appear to install the tools. Accept and wait for the installation to complete.

## Step 3: Install Homebrew
Paste the following command into your Terminal:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Follow the on-screen instructions. You may be prompted to enter your password.

## Step 4: Configure Your Shell
After installation, the script will output instructions to add Homebrew to your shell profile. For example, if you use Zsh:

```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Follow the instructions provided based on your shell type (e.g., Bash, Zsh).

## Step 5: Verify the Installation
To check if Homebrew was installed correctly, run:

```bash
brew doctor
```

If everything is set up, you'll see:

```
Your system is ready to brew.
```

## Step 6: Update Homebrew
To ensure Homebrew is up to date, run:

```bash
brew update
```

## You're Ready!
Homebrew is now installed. You can start installing packages like this:

```bash
brew install <package-name>
```

For more details, check the [official Homebrew documentation](https://brew.sh/).
