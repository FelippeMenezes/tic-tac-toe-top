# tic-tac-toe-top

A robust command-line Tic Tac Toe game built with Ruby, focusing on clean code and Object-Oriented Programming (OOP) principles.

## Technologies & Tools

- **Ruby**: The core language used for game logic.
- **Colorize Gem**: Used to provide a colorful and intuitive terminal UI, making it easier to distinguish between players.
- **RuboCop**: Integrated as a linter and style guide enforcer to maintain high code quality and idiomatic Ruby standards.
- **Pry-Byebug**: Utilized during development for deep debugging and runtime inspection.
- **Bundler**: Manages project dependencies and gems.

##  Programming Techniques

- **Object-Oriented Programming (OOP)**:
    - **Encapsulation**: Logical separation of concerns into `Player`, `Board`, and `Match` classes.
    - **State Management**: Using instance variables to track player roles, board positions, and game progress.
- **Input Validation**: Implementation of loops and conditional logic to ensure valid player names, symbols ('x' or 'o'), and board moves.
- **Modular Design**: The project structure separates the entry point (`main.rb`) from the library logic (`lib/`), following standard Ruby project conventions.
- **Game Loop Logic**: A structured loop that manages turn-based interaction, move execution, and win/draw condition evaluation.

## Features

- Custom player names and role selection.
- Real-time board rendering with color-coded markers.
- Automatic detection of horizontal, vertical, and diagonal win conditions.
- Detection of "Cat's game" (draw) when the board is full.

## How to Run

1. **Install dependencies**:
   ```bash
   bundle install
   ```
2. **Start the game**:
   ```bash
   ruby main.rb
   ```
