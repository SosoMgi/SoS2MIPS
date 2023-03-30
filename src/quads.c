#include "quads.h"
#include "debug.h"


void print_qop(FILE* file, const char* format, ...) {
    va_list args;
    va_start(args, format);
    vfprintf(file, format, args);
    va_end(args);
}



void display_quadop(FILE* file, struct sym_t op) {
    if(op.kind == TYPE_CST) {
        print_qop(file, "<cst>%d", op.cst);
    }
    else if(op.kind == TYPE_ADDR) {
        print_qop(file, "<addr>%ld", op.addr);
    }
    else if(op.kind == TYPE_UNKNOWN) {
        print_qop(file, "<unknown>");
    }
    else if(op.kind == TYPE_IDENT) {
        print_qop(file, "<ident>%s", op.ident);
    }
    else if(op.kind == TYPE_TAB_ELEM) {
        print_qop(file, "<tab_elem>%s[%i]", op.tab.ident, op.tab.idx);
    }
    else if(op.kind == TYPE_CST_STRING) {
        print_qop(file, "<cst_str>%s",op.cst_str);
    }
    else {
        print_qop(file, "no if match");
    }
}


struct sym_t quadop_addr_unknown() {
    struct sym_t qo;
    qo.kind = TYPE_UNKNOWN;
    return qo;
}
struct quad quad_echo(struct sym_t val) {
    struct quad q;
    q.kind = OP_ECHO;
    q.arg1 = val;
    q.data.is_last = 0;
    return q;
}
struct quad quad_goto_unknown() {
    struct quad q;
    q.kind = OP_GOTO_UNKNOWN;
    return q;
}



void print_quad(struct quad q, FILE * file_) {
    FILE * out;
    if(file_ == NULL) {
        out = stdout;
    }
    else {
        out = file_;
    }
    if( q.kind == OP_GOTO) {
        debug_to_file(out, "GOTO ");
        display_quadop(out, q.res);
    }
    else if(q.kind == OP_GOTO_UNKNOWN) {
        debug_to_file(out,"GOTO ?");
    }
    else if(q.kind == OP_GOTO_LABEL) {
        debug_to_file(out, "GOTO ");
        display_quadop(out, q.res);
    }
    else if(q.kind == OP_IFDIFF) {
        debug_to_file(out, "IF ");
        display_quadop(out, q.arg1);
        debug_to_file(out, " != ");
        display_quadop(out, q.arg2);
        debug_to_file(out, " GOTO ");
        display_quadop(out, q.res);
    }
    else if(q.kind == OP_IFEQ) {
        debug_to_file(out, "IF ");
        display_quadop(out, q.arg1);
        debug_to_file(out, " == ");
        display_quadop(out, q.arg2);
        debug_to_file(out, " GOTO ");
        display_quadop(out, q.res);
    }
    else if(q.kind == OP_IFGT) {
        debug_to_file(out, "IF ");
        display_quadop(out, q.arg1);
        debug_to_file(out, " > ");
        display_quadop(out, q.arg2);
        debug_to_file(out, " GOTO ");
        display_quadop(out, q.res);
    }
    else if(q.kind == OP_IFGE) {
        debug_to_file(out, "IF ");
        display_quadop(out, q.arg1);
        debug_to_file(out, " >= ");
        display_quadop(out, q.arg2);
        debug_to_file(out, " GOTO ");
        display_quadop(out, q.res);
    }
    else if(q.kind == OP_IFLT) {
        debug_to_file(out, "IF ");
        display_quadop(out, q.arg1);
        debug_to_file(out, " < ");
        display_quadop(out, q.arg2);
        debug_to_file(out, " GOTO ");
        display_quadop(out, q.res);
    }
    else if(q.kind == OP_IFLE) {
        debug_to_file(out, "IF ");
        display_quadop(out, q.arg1);
        debug_to_file(out, " <= ");
        display_quadop(out, q.arg2);
        debug_to_file(out, " GOTO ");
        display_quadop(out, q.res);
    }
    else if(q.kind == OP_IFEOP_STR) {
        debug_to_file(out, "IF ");
        display_quadop(out, q.arg1);
        debug_to_file(out, " ==(str) ");
        display_quadop(out, q.arg2);
        debug_to_file(out, " GOTO ");
        display_quadop(out, q.res);
    }
    else if(q.kind == OP_IFDIFF_STR) {
        debug_to_file(out, "IF ");
        display_quadop(out, q.arg1);
        debug_to_file(out, " !=(str) ");
        display_quadop(out, q.arg2);
        debug_to_file(out, " GOTO ");
        display_quadop(out, q.res);
    }
    else if(q.kind == OP_IFNULL_STR) {
        debug_to_file(out, "IF ");
        display_quadop(out, q.arg1);
        debug_to_file(out, " == \"\" (null)");
        debug_to_file(out, " GOTO ");
        display_quadop(out, q.res);
    }
    else if(q.kind == OP_IFNOTNULL_STR) {
        debug_to_file(out, "IF ");
        display_quadop(out, q.arg1);
        debug_to_file(out, " != \"\" (not null)");
        debug_to_file(out, " GOTO ");
        display_quadop(out, q.res);
    }
    else if(q.kind == OP_ADD) {
        debug_to_file(out, "SET ");
        display_quadop(out, q.res);
        debug_to_file(out, " TO ");
        display_quadop(out, q.arg1);
        debug_to_file(out, " + ");
        display_quadop(out, q.arg2);
    }
    else if(q.kind == OP_SUB) {
        debug_to_file(out, "SET ");
        display_quadop(out, q.res);
        debug_to_file(out, " TO ");
        display_quadop(out, q.arg1);
        debug_to_file(out, " - ");
        display_quadop(out, q.arg2);
    }
    else if(q.kind == OP_MUL) {
        debug_to_file(out, "SET ");
        display_quadop(out, q.res);
        debug_to_file(out, " TO ");
        display_quadop(out, q.arg1);
        debug_to_file(out, " * ");
        display_quadop(out, q.arg2);
    }
    else if(q.kind == OP_DIV) {
        debug_to_file(out, "SET ");
        display_quadop(out, q.res);
        debug_to_file(out, " TO ");
        display_quadop(out, q.arg1);
        debug_to_file(out, " / ");
        display_quadop(out, q.arg2);
    }
    else if(q.kind == OP_MOD) {
        debug_to_file(out, "SET ");
        display_quadop(out, q.res);
        debug_to_file(out, " TO ");
        display_quadop(out, q.arg1);
        debug_to_file(out, " %% ");
        display_quadop(out, q.arg2);
    }
    else if(q.kind == OP_INV_SIGNE) {
        debug_to_file(out, "SET ");
        display_quadop(out, q.res);
        debug_to_file(out, " TO (-1) * ");
        display_quadop(out, q.arg1);
    }
    else if(q.kind == OP_SET) {
        debug_to_file(out, "SET ");
        display_quadop(out, q.res);
        debug_to_file(out, " TO ");
        display_quadop(out, q.arg1);
    }
    else if(q.kind == OP_SET_TAB) {
        debug_to_file(out, "SET ");
        display_quadop(out, q.res);
        debug_to_file(out, "[");
        display_quadop(out, q.arg1);
        debug_to_file(out, "] TO ");
        display_quadop(out, q.arg2);
        debug_to_file(out, " (SET_TAB)");
    }
    else if(q.kind == OP_GET_TAB) {
        debug_to_file(out, "SET ");
        display_quadop(out, q.res);
        debug_to_file(out, " TO ");
        display_quadop(out, q.arg1);
        debug_to_file(out, "[");
        display_quadop(out, q.arg2);
        debug_to_file(out, "] (GET_TAB)");
    }
    else if(q.kind == OP_BIDON) {
        debug_to_file(out, "XXXX ");
        display_quadop(out, q.arg1);
    }
    else if(q.kind == OP_BIDON2) {
        debug_to_file(out, "YYYY ");
        display_quadop(out, q.arg1);
    }
    else if(q.kind == OP_EXIT) {
        debug_to_file(out, "EXIT ");
        display_quadop(out, q.arg1);
    }
    else if(q.kind == OP_ECHO) {
        debug_to_file(out, "ECHO ");
        display_quadop(out, q.arg1);
    }
    else if(q.kind == OP_DECLARE) {
        debug_to_file(out, "DECLARE ");
        display_quadop(out, q.arg1);
    }
    else if(q.kind == OP_DECLARE_TAB) {
        debug_to_file(out, "DECLARE_TAB ");
        display_quadop(out, q.arg1);
        debug_to_file(out, "[");
        display_quadop(out, q.arg2);
        debug_to_file(out, "]");
    }
    else if(q.kind == OP_CONCAT) {
        debug_to_file(out, "SET ");
        display_quadop(out, q.res);
        debug_to_file(out, " TO CONCAT(");
        display_quadop(out, q.arg1);
        debug_to_file(out, ", ");
        display_quadop(out, q.arg2);
        debug_to_file(out, ")");
    }
    else if(q.kind == OP_READ) {
        debug_to_file(out, "READ IN ");
        display_quadop(out, q.res);
    }
    else if (q.kind == OP_READ_TAB) {
        debug_to_file(out, "READ IN TAB ");
        display_quadop(out, q.res);
        debug_to_file(out, "[");
        display_quadop(out, q.arg1);
        debug_to_file(out, "]");
    }
    else if(q.kind == OP_ARG_GLOB) {
        debug_to_file(out, "ARG n°");
        display_quadop(out, q.arg1);
        debug_to_file(out," -> ");
        display_quadop(out, q.res);
    }
    else if(q.kind == OP_CONCAT_ARG_GLOB) {
        debug_to_file(out, "CONCAT ARGS -> ");
        display_quadop(out, q.res);
    }
    else {
        debug_to_file(out, "UNRECOGNIZED QUAD");
    }
    debug_to_file(out, "\n");
}




struct sym_t quad_sym (enum sym_type_t type, ...)
{
    
    struct sym_t q;
    q.kind = type;
    va_list ap;
    va_start(ap, type);
    switch (type)
    {
        case TYPE_CST:
            q.cst = va_arg(ap, int);
            break;
        case TYPE_CST_STRING:
            strncpy(q.cst_str, va_arg(ap, char *), MAX_STRING_SIZE);
            break;
        case TYPE_IDENT:
            strncpy(q.ident, va_arg(ap, char *), MAX_IDENT_SIZE);
            break;
        case TYPE_TAB_ELEM:
            strncpy(q.tab.ident, va_arg(ap, char *), MAX_IDENT_SIZE);
            q.tab.idx = va_arg(ap, int);
            break;
        case TYPE_ADDR:
            q.addr = va_arg(ap, int);
            break;
        case TYPE_UNKNOWN:

        default:
            break;
    }
    va_end(ap);
    return q;
}



struct quad quad_cond (enum op_t type, ...)
{
    struct quad q;
    q.kind = type;
    va_list ap;
    va_start(ap, type);
    switch (type)
    {
        case OP_IFEQ:
            q.res = quadop_addr_unknown();
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            break;
        case OP_IFDIFF:
            q.res = quadop_addr_unknown();
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            break;
        case OP_IFGT:
            q.res = quadop_addr_unknown();
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            break;
        case OP_IFGE:
            q.res = quadop_addr_unknown();
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            break;
        case OP_IFLT:
            q.res = quadop_addr_unknown();
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            break;
        case OP_IFLE:
            q.res = quadop_addr_unknown();
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            break;
        case OP_IFEOP_STR:
            q.res = quadop_addr_unknown();
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            break;
        case OP_IFDIFF_STR:
            q.res = quadop_addr_unknown();
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            break;
        case OP_IFNULL_STR:
            q.res = quadop_addr_unknown();
            q.arg1 = va_arg(ap, struct sym_t);
            break;
        case OP_IFNOTNULL_STR:
            q.res = quadop_addr_unknown();
            q.arg1 = va_arg(ap, struct sym_t);
            break;
        case OP_ADD:
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            q.res = va_arg(ap, struct sym_t);
            break;
        case OP_SUB:
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            q.res = va_arg(ap, struct sym_t);
            break;
        case OP_MUL:
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            q.res = va_arg(ap, struct sym_t);
            break;
        case OP_DIV:
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            q.res = va_arg(ap, struct sym_t);
            break;
        case OP_MOD:
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            q.res = va_arg(ap, struct sym_t);
            break;
        case OP_INV_SIGNE:
            q.arg1 = va_arg(ap, struct sym_t);
            q.res = va_arg(ap, struct sym_t);
            break;
        case OP_GOTO_LABEL: // GOTO
            q.res = va_arg(ap, struct sym_t);
            break;
        case OP_GOTO :
            q.res = quadop_addr_unknown();
            break;
        case OP_SET:
            q.arg1 = va_arg(ap, struct sym_t);
            q.res = va_arg(ap, struct sym_t);
            break;
        case OP_SET_TAB :
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            q.res = va_arg(ap, struct sym_t);
            break;
        case OP_GET_TAB :
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            q.res = va_arg(ap, struct sym_t);
            break;
        case OP_EXIT:
            q.arg1 = va_arg(ap, struct sym_t);
            break; 
        case OP_DECLARE:
            q.arg1 = va_arg(ap, struct sym_t);
            break;  
        case OP_BIDON:
            q.arg1 = quad_sym(TYPE_CST, 3, va_arg(ap, int));
            break;
        case OP_BIDON2:
            q.arg1 = quad_sym(TYPE_CST, 3, va_arg(ap, int));
            break;
        case OP_DECLARE_TAB:
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            break;
        case OP_ECHO:
            q.arg1 = va_arg(ap, struct sym_t);
            q.data.is_last = 0;
            break;
        case OP_CONCAT:
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            q.res = va_arg(ap, struct sym_t);
            break;
        case OP_READ:
            q.res = va_arg(ap, struct sym_t);
            break;
        case OP_READ_TAB:
            q.arg1 = va_arg(ap, struct sym_t);
            q.arg2 = va_arg(ap, struct sym_t);
            break;
        case OP_ARG_GLOB:
            q.res = va_arg(ap, struct sym_t);
            q.arg1 = va_arg(ap, struct sym_t);
            break;
        case OP_CONCAT_ARG_GLOB:
            q.arg1 = va_arg(ap, struct sym_t);
            q.res = va_arg(ap, struct sym_t);
            break;
        default:
            break;
    }
    va_end(ap);
    return q;
};


