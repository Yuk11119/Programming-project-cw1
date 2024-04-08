#include<stdio.h>
#include<stdbool.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>

struct node{
    int row, col;
}s, e, curPoint, nextPoint;

bool checkArgumentValidation(char *commandArgument[])
{
    // Check the number of command line argument
    // If the length of argv[] is not 4, they are not valide and return false
    int cnt = 0;
    while(commandArgument[cnt] != NULL) cnt++;

    if(cnt != 4) return false;

    // Check the width and height of command line argument
    // They should be integers ranging from 5 to 100
    if(strlen(commandArgument[2]) > 3 || strlen(commandArgument[3]) > 3) return false;
    
    int width = atoi(commandArgument[2]);
    int height = atoi(commandArgument[3]);
    
    if(width < 5 || width > 100 || height < 5 || height > 100) return false;
    return true;
}

bool checkValidationMap(int width, int height, char *fileName)
{
    // Check whether the length and width correspond to the contents of the file
    // Check the Point S and point D exist simultaneously
}

char** readFile(int rows, int cols, char *fileName) {
    char** map = (char**)malloc(rows * sizeof(char*));
    for (int i = 0; i < rows; i++) {
        map[i] = (char*)malloc(cols * sizeof(char));
    }

    // The contents of the file are read by line
    // and stored in the map array

    return map;
}

bool nodecmp(const node a, const node b)
{
    if(a.col != b.col || a.row != b.row) return false;
    else return true;
}

bool checkLocation(node x)
{

}

int main(char *argv[])
{
    char op;

    // Check the validation of command line arguments
    if(!checkArgumentValidation(argv)) {
        printf("ERROR: The command line argument is not valid\n");
        return 0;
    }

    int width = atoi(argv[2]);
    int height = atoi(argv[3]);

    // Check the validation of file
    if(!checkValidationMap(height, width, argv[1])) {
        printf("ERROR: The map is not valid\n");
        return 0;
    }
    // If the file is valide, store in map array
    char** map = readFile(height, width, argv[1]);

    // Find the strat point and end point.
    for(int i = 0; i < height; i++) {
        for(int j = 0; j < width; j++) {
            if(map[i][j] == 'S') {
                s.col = j;
                s.row = i;
                curPoint.row = s.row;
                curPoint.col = s.col;
                map[i][j] = 'X';
            }
            if(map[i][j] == 'E') {
                e.col = j;
                e.row = i;
            }
        }
    }

    // start game
    while(!nodecmp(curPoint, e))
    {
        scanf("%c", &op);
        op = tolower(op);
        nextPoint.row = curPoint.row;
        nextPoint.col = curPoint.col;

        // Check the input validation
        if(op == 'm') outputMap();
        else if(op == 'w' || op == 'a' || op == 's' || op == 'd') {
            if(op == 'w') nextPoint.row--;
            else if(op == 'a') nextPoint.col--;
            else if(op == 's') nextPoint.row++;
            else nextPoint.col++;

            if(checkLocation(nextPoint)){
                updateMap(curPoint, nextPoint);
            }
            else {
                printf("oops! This step may have hit a snag.\n");
                printf("Please try again\n");
            }
        }
        else
        
    }
    
    // Output the flag of win
    if(nodecmp(curPoint, e)) {
        printf("Winner Winner, Chicken dinner!\n");
        printf("Yuk1 wish you happy every day\n");
    }

    for (int i = 0; i < width; i++) {
        free(map[i]);
    }
    free(map);
    return 0;
}