#!/bin/bash

# Clear the environment
clear

# Delay before starting the installation process
sleep 2

# Array of required packages
packages=("figlet" "ruby")

# Check if packages are already installed
missing_packages=()
for package in "${packages[@]}"; do
  if ! command -v "$package" >/dev/null 2>&1; then
    missing_packages+=("$package")
  fi
done

# Install missing packages
if [ ${#missing_packages[@]} -gt 0 ]; then
  echo "Installing required packages..."
  apt update
  apt install -y "${missing_packages[@]}"
  
  echo "Packages installed successfully!"
else
  echo "Required packages are already installed."
fi

# Create the main script file
echo -e "#!/bin/bash

# Array of color variables
colors=('\033[0;31m' '\033[0;32m' '\033[0;33m' '\033[0;34m' '\033[0;35m' '\033[0;36m')

# Randomly select a color for the FIGLet banner
figlet_color=\"\${colors[\$RANDOM % \${#colors[@]}]}\"

# Randomly select a color for the ASCII art
ascii_color=\"\${colors[\$RANDOM % \${#colors[@]}]}\"

# Colorized FIGLet banner
echo -e \"\${figlet_color}\"
figlet -f .sw.flf FIGLet
echo -e \"\033[0m\"

echo -e "${figlet_color}Welcome to ASCII Art Generator"

# Prompt for the text input (colorized in green)
read -p $'\e[0;32mEnter the text: \e[0m' input_text

# Prompt for the font selection
read -p \"Select the font (press Enter for default): \" font_selection

# Font selection validation
if [ -n \"\$font_selection\" ]; then
  if [ -f \"\$font_selection\" ]; then
    font_option=\"-f \$font_selection\"
  else
    echo \"Font file not found. Using default font.\"
    font_option=\"\"
  fi
else
  font_option=\"\"
fi

# Generate the ASCII art
generated_ascii=\$(figlet -l \$font_option \"\$input_text\")

# Display the ASCII art preview
echo -e \"\${ascii_color}\"
echo -e \"\$generated_ascii\"
echo -e \"\033[0m\"

# Prompt for saving the file
read -p \"Do you want to save the generated ASCII art? (y/n): \" save_option

if [ \"\$save_option\" == \"y\" ]; then
  # Prompt for the file name
  read -p \"Enter the file name (without extension): \" file_name

  # Add .sh extension if not provided
  if [[ \$file_name != *\".sh\" ]]; then
    file_name=\"\$file_name.sh\"
  fi

  # Save the file in the Termux home directory
  file_path=\"\$HOME/\$file_name\"
  echo -e \"#!/bin/bash\n\necho -e \\\"\$generated_ascii\\\"\" > \"\$file_path\"
  chmod +x \"\$file_path\"
  echo \"File saved as \$file_path\"
fi" > Figlet.sh

chmod +x Figlet.sh
echo "install.sh file created successfully!"
