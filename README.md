Here is the reversed order of the README:

---

**My First Linux Rice Setup**

Welcome to my first attempt at creating a personalized and aesthetic Linux rice! Here's an overview of the tools, configurations, and workflow I used to achieve this look. The rice is built on **Parrot Security OS 6.2 (lorikeet)** and features a clean, minimal design.

---

![image](https://github.com/H4ckN3rd/Dotfiles/blob/master/screenshot/ss1.png)

---

**🛠️ Tools and Components**

- **Window Manager**: i3
- **Launcher**: dmenu
- **Status Bar**: Polybar
- **Color Scheme Generator**: Pywal
- **Terminal Emulator**: Terminator
- **Shell**: zsh with plugins for customization
- **Theme**: ARK-Dark [GTK2/3]
- **Icons**: Ara [GTK2/3]

---

**⚙️ System Details**

- **Operating System**: Parrot Security OS 6.2
- **Kernel**: 6.10.11-amd64
- **Resolution**: 1920x1080
- **CPU**: 11th Gen Intel i5-1135G7

---

**Linux Setup Guide**

This guide will walk you through installing and configuring your Linux setup with the specified tools and configurations. Follow the steps below:

---

**1. Install Base OS (Debian)**

Start by installing the Debian operating system on your machine. You can download the ISO from the official Debian website and follow their installation instructions.

---

**2. Update the System**

After installing Debian, update your system:

```bash
sudo apt update && sudo apt upgrade -y
```

---

**3. Install Required Packages**

Install the following packages:

```bash
sudo apt install i3 i3blocks rofi i3lock polybar terminator zsh stow polkit-gnome pkexec -y
```

**Oh-My-ZSH**

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Set Zsh as the default shell:

```bash
chsh -s $(which zsh)
```

---

**4. Install Dotfiles**

Clone and install the dotfiles from the H4ckN3rd repository:

```bash
git clone https://github.com/H4ckN3rd/dotfiles.git ~/dotfiles
```

Use GNU Stow to manage the dotfiles:

```bash
cd ~/dotfiles
stow *
```

---

**5. Set Up polkit-gnome and pkexec**

Install and configure `polkit-gnome` and `pkexec`:

```bash
sudo apt install policykit-1-gnome
sudo apt install pkexec
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
```

Add the last line to your i3 configuration file (`~/.config/i3/config`) to ensure the agent starts automatically.

---

**6. Install Pywal**

Install Pywal and move it to `/usr/local/bin`:

1. Download and install Pywal:

   ```bash
   pip install pywal
   ```

2. Move Pywal to `/usr/local/bin` if needed:

   ```bash
   sudo mv $(which wal) /usr/local/bin
   ```

---

**Done!**

Your Linux setup is now complete. Enjoy your customized environment!
