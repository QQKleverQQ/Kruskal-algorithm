# Kruskal's Algorithm in Pascal

## Description
This program implements Kruskal's algorithm to find the Minimum Spanning Tree (MST) in a graph. Kruskal's algorithm works by sorting edges by weight and adding them to the spanning tree if they do not form a cycle.

The program is split into several files for better structure:
- **Kruskal.pas** — the main file that runs Kruskal's algorithm.
- **EdgeList.pas** — the file to handle edges (adding edges and retrieving them).
- **GraphUtils.pas** — the file with the actual Kruskal algorithm implementation and helper functions.

## Requirements
To compile and run the program, you need a Pascal compiler. The program was developed using **Free Pascal**.

### System Requirements:
- Operating system: Windows, Linux, or macOS
- Compiler: Free Pascal or Turbo Pascal

## Installation and Running

1. Install **Free Pascal** compiler:
   - Download and install [Free Pascal](https://www.freepascal.org/).
   - For Windows, download the installer; for Linux and macOS, use package managers.

2. Create a project and add the following files:
   - **Kruskal.pas**
   - **EdgeList.pas**
   - **GraphUtils.pas**

3. Compile the program:
   - Open the command line or terminal.
   - Navigate to the folder containing your files.
   - Run the compilation command:
     ```
     fpc Kruskal.pas
     ```

4. Run the program:
   - In the command line, execute:
     ```
     ./Kruskal
     ```
   - The program will print the edges of the minimum spanning tree.

## Sample Output
After running the program with, for example, the specified edges, the output may look like this:
