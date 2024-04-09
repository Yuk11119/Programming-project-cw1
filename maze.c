#include<stdio.h>
#include<stdbool.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>

struct node{
    int row, col;
}s, e;
char **map;

bool checkArgumentValidation(char *commandArgument[])
{
    // Check the number of command line argument
    // If the length of argv[] is not 4, they are not valid and return false
    int cnt = 0;
    while(commandArgument[cnt] != NULL) cnt++;

    if(cnt != 4) {
        printf("ERROR: The number of command line arguments is not correct\n");
        return false;
    }

    // Check the width and height of command line argument
    // They should be integers ranging from 5 to 100
    if(strlen(commandArgument[2]) > 3 || strlen(commandArgument[3]) > 3) {
        printf("ERROR: The arguments of width and height are not valid\n");
        return false;
    }
    
    int width = atoi(commandArgument[2]);
    int height = atoi(commandArgument[3]);
    
    if(width < 5 || width > 100 || height < 5 || height > 100) {
        printf("ERROR: The arguments of width and height are not valid\n");
        return false;
    }

    // Check the validation of filename
    FILE *file = fopen(commandArgument[1], "r");
    if (file == NULL) {
        printf("ERROR: The file is not exist\n");
        fclose(file);
        return false;
    }
    else fclose(file);
    
    return true;
}

bool checkValidationMap(int width, int height, char *fileName)
{
    // Check whether the length and width correspond to the contents of the file
    // Check the Point S and point D exist simultaneously
    // Check whether the contents are legal
    // If all the tests, then run the function of readFile
}

char** readFile(int rows, int cols, char *fileName) {
    map = (char**)malloc(rows * sizeof(char*));
    for (int i = 0; i < rows; i++) {
        map[i] = (char*)malloc(cols * sizeof(char));
    }

    // The contents of the file are read by line
    // and stored in the map array
    // Find the S and E points
    for(int i = 0; i < rows; i++) {
        for(int j = 0; j < cols; j++) {
            if(map[i][j] == 'S') {
                s.col = j;
                s.row = i;
                map[i][j] = 'X';
            }
            if(map[i][j] == 'E') {
                e.col = j;
                e.row = i;
            }
        }
    }
    
    return map;
}

bool nodecmp(const struct node a, const struct node b)
{
    if(a.col != b.col || a.row != b.row) return false;
    else return true;
}

bool checkLocation(struct node x)
{
    // Check whether the current direction of movement is legal
    // Whether the curPoint is a border or a wall
}

void outputMap(int row, int col)
{
    // Output the maze to meet the requirement of input-'m'
    printf("This is the maze:\n");
    for(int i = 0; i < row; i++) {
        for(int j = 0; j < col; j++) {
            printf("%c", map[i][j]);
        }
        printf("\n");
    }
}

void updateMap(struct node curPoint, struct node nextPoint)
{
    // Update the information of current point in the maze
    map[curPoint.row][curPoint.col] = ' ';
    map[nextPoint.row][nextPoint.col] = 'X';
}

int main(char *argv[])
{
    struct node curPoint, nextPoint;
    char op;

    // Check the validation of command line arguments
    if(!checkArgumentValidation(argv)) return 0;

    int width = atoi(argv[2]);
    int height = atoi(argv[3]);

    // Check the validation of file
    if(!checkValidationMap(height, width, argv[1])) {
        printf("ERROR: The map is not valid\n");
        return 0;
    }

    // start game
    curPoint.row = s.row;
    curPoint.col = s.col;
    while(!nodecmp(curPoint, e))
    {
        printf("Please input your operation: ");
        scanf("%c", &op);
        op = tolower(op);
        nextPoint.row = curPoint.row;
        nextPoint.col = curPoint.col;

        // Check the input validation
        if(op == 'm') outputMap(height, width);
        else if(op == 'w' || op == 'a' || op == 's' || op == 'd') {
            if(op == 'w') nextPoint.row--;
            else if(op == 'a') nextPoint.col--;
            else if(op == 's') nextPoint.row++;
            else nextPoint.col++;

            if(checkLocation(nextPoint)){
                updateMap(curPoint, nextPoint);
            }
            else {
                printf("oops! This step may have hit a snag.");
                printf("Please try again\n");
            }
        }
        else {
            printf("The operation is not valid, Please change it\n");
        }
    }
    
    // Output the flag of win
    if(nodecmp(curPoint, e)) {
        printf("Winner Winner, Chicken dinner!");
        printf(" -Yuk1 wish you happy every day\n");
    }

    for (int i = 0; i < width; i++) {
        free(map[i]);
    }
    free(map);
    return 0;
}