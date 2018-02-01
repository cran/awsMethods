#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>
#define CALLDEF(name, n)  {#name, (DL_FUNC) &name, n}
#include <Rinternals.h> // for SEXP
        extern void getNumCores(int *n);
        extern void getNumThreads(int *n);
        extern void setNumThreads(int *n);
static R_NativePrimitiveArgType getNumCores_t[]={INTSXP};
static R_NativePrimitiveArgType getNumThreads_t[]={INTSXP};
static R_NativePrimitiveArgType setNumThreads_t[]={INTSXP};
static const R_CMethodDef R_CDef[] = {
            {"getNumCores", (DL_FUNC) &getNumCores, 1, getNumCores_t},
            {"getNumThreads", (DL_FUNC) &getNumThreads, 1, getNumThreads_t},
            {"setNumThreads", (DL_FUNC) &setNumThreads, 1, setNumThreads_t},
            {NULL, NULL, 0,NULL}
};

void R_init_awsMethods(DllInfo *dll)
         {
             R_registerRoutines(dll, R_CDef, NULL, NULL, NULL);
             R_useDynamicSymbols(dll,FALSE);
             R_forceSymbols(dll,TRUE);
         }
