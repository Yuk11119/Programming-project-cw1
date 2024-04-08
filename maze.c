#include<stdio.h>
#include<stdbool.h>
#include<stdlib.h>
#include<string.h>

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

int main(char *argv[])
{
    // Check the validation of command line arguments
    if(!checkArgumentValidation(argv)) {
        printf("ERROR: The command line argument is not valid\n");
        return 0;
    }

    int width = atoi(argv[2]);
    int height = atoi(argv[3]);

    // Check the validation of file
    if(!checkValidationMap(width, height, argv[1])) {
        printf("ERROR: The map is not valid\n");
        return 0;
    }
    // If the file is valide, store in map array
    char** map = readFile(width, height, argv[1]);
}