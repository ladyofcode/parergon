# Parergon site theme

These are the theme files for the Parergon website hosted on Open Journal Systems (OJS). This folder should be in the plugins/themes folder in OJS.

## Starting OJS from VS Code
This is a note for the plugin author, because she forgets. It should autoreload pages.

Requirements:
* VS Code Live Server extension
* VS Code PHP Server extension
* Chrome Live Server Web Extension (LSWE)

Instructions:
* Start MySQL server: `sudo service mysql start`
* Go Live in VS Code (Live Server) on port 5501
* LSWE Actual Server Address: http://localhost:3000/ojs/
* LSWE - no, you don't want a proxy setup
* LSWE Live Server address: http://127.0.0.1:5501/
* Open the root index.php page in VS Code, right-click anywhere on the code, and Serve/Reload Project