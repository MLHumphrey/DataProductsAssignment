library(lubridate)
shinyServer(
	function(input,output) {
		output$oid1<-renderPrint({input$id1})
		output$oid2<-renderPrint({input$id2})
		output$prediction<-renderPrint({year(as.POSIXlt(today()))-input$id1-as.numeric(input$id2)})
				}
		)