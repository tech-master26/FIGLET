# FIGLet

# Figlet ASCII Generator

This script is a simple tool that generates ASCII art using Figlet. It allows you to customize the text, font, and color of the generated ASCII art.

## Installation

1. Ensure you have [Termux](https://termux.com/) installed on your Android device.

2. Open Termux and run the following commands to install the required packages:

   ```
   pkg update
   pkg upgrade -y
   pkg install git -y
   
   ```

3. Clone this repository by running the following command in Termux:

   ```
   git clone https://github.com/sirajul26/FIGLET.git
   
   ```

4. Navigate to the cloned directory:

   ```
   cd FIGLET
   ```

5. Make the `install.sh` script executable:

   ```
   chmod +x install.sh
   ```

6. Run the `install.sh` script to set up the necessary dependencies:

   ```
   bash install.sh
   ```

   This will install any missing packages required by the script.

## Usage

1. To run the Figlet ASCII Art Generator, execute the following command in the `FIGLET` directory:

   ```
   bash Figlet.sh
   ```

2. Follow the prompts to enter the text you want to generate as ASCII art and select a font. You can press Enter to use the default font.

3. The script will generate the ASCII art and display a preview in randomly chosen colors.

4. You will be prompted to save the generated ASCII art. Enter `y` to proceed or `n` to skip.

   - If you choose to save, enter the desired file name (without the extension). The script will save the ASCII art as a Bash script with the `.sh` extension in your Termux home directory.
   - If you skip saving, the script will end and the generated ASCII art will not be saved.

   Note: Saved ASCII art scripts can be executed using the `bash` command to display the art in the terminal.

5. That's it! You have successfully generated and optionally saved ASCII art using Figlet.

# Fonts Collection
download fonts for ASCII 
Click 👉
[Fonts](http://www.figlet.org/fontdb.cgi) or goto the following link:
```
http://www.figlet.org/fontdb.cgi
```

## Contributing

Contributions are welcome! If you have any suggestions, improvements, or bug fixes, feel free to submit a pull request or open an issue.

## License

This project is licensed under the [BasicHacker](https://youtube.com/@BasicHacker26).
