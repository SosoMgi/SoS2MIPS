#pragma once

#include <stdarg.h>
#include <stdbool.h>

struct struc_args
{

  char *input;
  FILE *output;

  int print_tos;
  int print_q;
};

/**
 * @brief Initialize the command line arguments structure.
 *
 * @param args command line arguments structure
 */
void cmd_init(struct struc_args *args);

/**
 * @brief Read from the command line arguments and store them in a struct
 *
 * @param argc number of arguments
 * @param argv array of arguments
 * @param args struct to store the arguments
 */
int parse(int argc, char *argv[], struct struc_args *args);

/**
 * @brief Check if the arguments are valid
 *
 * @param args struct containing the arguments
 */
void check(const struct struc_args *args);
