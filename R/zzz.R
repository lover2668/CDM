## File Name: zzz.R
## File Version: 2.09
#  zzz.R
#
# This function is simply copied from mice package.

#------------------------------.onLoad-------------------------------
#.onLoad <- function(...){
#  d <- packageDescription("CDM")
#  cat("\n#############################\n")
#  packageStartupMessage(paste(d$Package," ", d$Version," (",d$Date,")",sep=""))
#  cat("#############################\n")
#  return()
#}
version <- function(pkg="CDM")
{
    lib <- dirname(system.file(package=pkg))
    d <- utils::packageDescription(pkg)
    return(paste(d$Package,d$Version,d$Date,lib))
}
# on attach CDM
.onAttach <- function(libname,pkgname)
{
    d <- utils::packageDescription("CDM")
    dc <- nchar(d$Version)
    m1 <- paste(rep( " ", 12-dc ), collapse="")
    packageStartupMessage("**********************************\n",
        paste("** ", d$Package," ", d$Version," (",d$Date,")",
            m1, "\n",sep=""),
        paste("** Cognitive Diagnostic Models  **",sep=""),
        "\n**********************************\n" )
}
