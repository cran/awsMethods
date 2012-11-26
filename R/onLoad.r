.onLoad <- function(lib, pkg){
  if(TRUE)
  {
     setCores(1)
     packageStartupMessage("\nUse the function setCores() to change the number of CPU cores.\n")
  }
}
