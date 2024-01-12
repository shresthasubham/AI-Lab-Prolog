#include <iostream>
#include <vector>

class Queens {
public:
    Queens(int n) : size(n), solutions(0) {
        board.resize(size, std::vector<int>(size, 0));
    }

    void solve() {
        placeQueens(0);
        std::cout << "Total solutions for " << size << "-Queens problem: " << solutions << std::endl;
    }

private:
    int size;
    int solutions;
    std::vector<std::vector<int>> board;

    void placeQueens(int row) {
        if (row == size) {
            printSolution();
            solutions++;
            return;
        }

        for (int col = 0; col < size; col++) {
            if (isSafe(row, col)) {
                board[row][col] = 1;
                placeQueens(row + 1);
                board[row][col] = 0; // Backtrack
            }
        }
    }

    bool isSafe(int row, int col) {
        // Check if no queen is present in the same column and diagonals
        for (int i = 0; i < row; i++) {
            if (board[i][col] == 1) return false;
            if (col - (row - i) >= 0 && board[i][col - (row - i)] == 1) return false;
            if (col + (row - i) < size && board[i][col + (row - i)] == 1) return false;
        }
        return true;
    }

    void printSolution() const {
        std::cout << "Solution " << solutions + 1 << ":\n";
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                std::cout << (board[i][j] ? "Q" : ".") << " ";
            }
            std::cout << "\n";
        }
        std::cout << "\n";
    }
};

int main() {
    int n;
    std::cout << "Enter the size of the chessboard (N-Queens problem): ";
    std::cin >> n;

    Queens queens(n);
    queens.solve();

    return 0;
}
