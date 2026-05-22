# AutoCAD Areacal LISP

A lightweight and efficient AutoLISP routine for AutoCAD that calculates the area of a closed boundary by simply clicking inside it and automatically places the calculated value as an MTEXT object at the center of the selected area.

## Features

- **Instant Boundary Detection:** Automatically detects closed boundaries using the internal point selection method.
- **Auto-Placement:** Places a middle-center justified MTEXT directly at the clicked coordinates.
- **Clean Database Management:** Creates a temporary boundary entity to extract geometry data and deletes it immediately after calculation to keep the drawing database clean.
- **System Variable Protection:** Automatically preserves and restores user `OSMODE` and `CMDECHO` settings after execution.

## Installation

1. Download the `areacal.lsp` file.
2. Open AutoCAD and type `APPLOAD` in the command line.
3. Select the `areacal.lsp` file and click **Load**.
4. (Optional) To load the script automatically for every drawing, add it to your **Startup Suite** within the `APPLOAD` dialog box.

## Usage

1. Type `AREACAL` in the AutoCAD command line and press `Enter`.
2. Click any internal point inside a closed region (e.g., a room, rectangle, closed polyline, or circle).
3. The routine will calculate the area, print the result to the command line, and place the text at the center of the clicked point.

## Customization

The script uses default drawing units and text styles. If you are working with specific unit conversions (e.g., converting square millimeters to square meters), you can modify the `rtos` function scaling or divide the `area_val` variable directly within the source code.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

<img width="1572" height="1142" alt="image" src="https://github.com/user-attachments/assets/be0d6224-e149-45ee-9416-3c7be6d2d6f6" />

<img width="1763" height="1140" alt="image" src="https://github.com/user-attachments/assets/3d9ea05f-5af5-4e5c-bdd5-9fbae1cd3d8d" />

<img width="1540" height="1139" alt="image" src="https://github.com/user-attachments/assets/3b2ada07-658b-4868-bc7a-266d55a2c5ac" />






