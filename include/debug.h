#ifndef DEBUG_H
#define DEBUG_H

#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <execinfo.h>
#include <time.h>

#ifdef PRINT_DEBUG
#define DEBUG if(1)
#else
#define DEBUG if(0)
#endif


// Debug function to print information
void debug_info(const char* format, ...);

// Debug function to print error
void debug_error(const char* format, ...);

// Debug function to print to a file
void debug_to_file(FILE* file, const char* format, ...);

// Debug function to print value of a variable
void debug_var(const char* var_name, int value);

// Debug function to print stack trace
void print_stack_trace(int max_depth);

// Debug function to measure time elapsed
double time_elapsed(clock_t start);

// Macro to check for null pointers
#define check_pointer(ptr) \
    do { \
        if ((ptr) == NULL) { \
            fprintf(stderr, "[ERROR] Null pointer: %s\n", #ptr); \
            exit(EXIT_FAILURE); \
        } \
    } while (0)

// Macro to check return values
#define check_return(ret) \
    do { \
        if ((ret) != 0) { \
            fprintf(stderr, "[ERROR] Function returned error code: %d\n", (ret)); \
            exit(EXIT_FAILURE); \
        } \
    } while (0)

// Macro to check conditions
#define check_condition(cond) \
    do { \
        if (!(cond)) { \
            fprintf(stderr, "[ERROR] Assertion failed: %s\n", #cond); \
            exit(EXIT_FAILURE); \
        } \
    } while (0)


#define CHECK_NULL(ptr) \
    if ((ptr) == NULL) { \
        fprintf(stderr, "Error: null pointer at %s:%d\n", __FILE__, __LINE__); \
        return; \
    }

#endif