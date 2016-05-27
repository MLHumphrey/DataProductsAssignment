library(shiny)
	shinyUI(pageWithSidebar(
		headerPanel("Calculate Your Birth Year"),
		sidebarPanel(
			numericInput('id1','What is your age?',0,min=0,max=99,step=1),
			checkboxInput('id2',"I have not yet had my birthday(check if true)",FALSE)
			),
		mainPanel(
			h3("Your Age Is"),
			verbatimTextOutput("oid1"),
			h3("You Have Not Yet Had Your Birthday"),
			verbatimTextOutput("oid2"),
			h3("Which Means You Were Born In"),
			verbatimTextOutput("prediction")
		)
	))