#' Removes `\begin{table}` and `\end{table}`
#'
#' Such that the kable output can be placed in a table environment (and `\ivthline` can be added aswell as caption and label)
#'
#' @param knitr_kable
#'
#' @return
#' @export
ivt_table <- function(knitr_kable)
{
  table <- stringr::str_remove_all(knitr_kable, "\\\\begin\\{table\\}|\\\\end\\{table\\}")
  class(table) <- "knitr_kable"
  attributes(table) <- attributes(knitr_kable)
  return(table)
}

