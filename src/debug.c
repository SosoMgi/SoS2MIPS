#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <execinfo.h>
#include <time.h>
#include "debug.h"


void debug_format(FILE *file, const char *tag, const char *message,
				va_list args) {
	time_t now;
	time(&now);
	char buffer[26];
	struct tm *tm_info;

	tm_info = localtime(&now);

	strftime(buffer, 26, "%Y-%m-%d %H:%M:%S", tm_info);

	fprintf(file, "%s [%s]: ", buffer, tag);
	vfprintf(file, message, args);
	fprintf(file, "\n");
}



void debug_info(const char* format, ...) {
    va_list args;
    va_start(args, format);
    printf("[INFO] ");
    vprintf(format, args);
    va_end(args);
}


void debug_error(const char* format, ...) {
    va_list args;
    va_start(args, format);
    fprintf(stderr, "[ERROR] ");
    vfprintf(stderr, format, args);
    va_end(args);
}



void debug_to_file(FILE* file, const char* format, ...) {
    va_list args;
    va_start(args, format);
    vfprintf(file, format, args);
    va_end(args);
}


void debug_var(const char* var_name, int value) {
    printf("[DEBUG] %s = %d\n", var_name, value);
}

/*
* Cette fonction utilise les fonctions backtrace et backtrace_symbols 
* de la librairie execinfo.h pour afficher la pile d'appel de la fonction 
* où elle est appelée. Cela permet de comprendre l'enchaînement des appels
* de fonctions qui ont conduit à un point donné dans le code.
*/
void print_stack_trace(int max_depth) {
    void* callstack[max_depth];
    int frames = backtrace(callstack, max_depth);
    char** strs = backtrace_symbols(callstack, frames);
    for (int i = 0; i < frames; i++) {
        printf("%s\n", strs[i]);
    }
    free(strs);
}




double time_elapsed(clock_t start) {
    return (double)(clock() - start) / CLOCKS_PER_SEC;
}