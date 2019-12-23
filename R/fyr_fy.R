
#' @title Fiscal Year
#' @author Michael Valcic
#' @description Returns an integer year from a date based on the starting month of the fiscal year
#' @param fy_date Date in date format
#' @param fy_start Must be an integer in range of 1 - 12 to represent the starting month of the fiscal year
#' @examples
#' fy(as.Date("2019-05-01"),6)

fy<- function(fy_date,fy_start=1) {
  if (is.numeric(fy_start)) {
    fy_start<-as.integer(fy_start)
    if (fy_start>0&
        fy_start<13&
        is.integer(fy_start)) {

      fy_month<-as.numeric(format(fy_date,"%m"))
      ifelse(fy_month%in%seq.int(fy_start,12),
             as.numeric(format(fy_date,"%Y"))+1,
             as.numeric(format(fy_date,"%Y")))
    }

    else{
      warning("fy_start must be an integer in range between 1 - 12.")

    }

  }
  else {
    warning("fy_start must be an integer.")
  }
}
