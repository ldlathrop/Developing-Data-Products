# define function which gives blood pressure state
find_bp_state <- function(systolic, diastolic) {
        if (systolic < 120 & diastolic < 80) {
                return("Normal Range")
        } else if (systolic > 160 | diastolic > 100) {
                return("Very High Range = Stage 2 Hypertension")
        } else if (systolic %in% c(121:139) | diastolic %in% c(80:89)) {
                return("Caution Range = Prehypertension")
        } else if (systolic %in% c(140:159) | diastolic %in% c(90:99)) {
                return("High Range = Stage 1 Hypertension")
        }
}

# test function
find_bp_state(130, 82)
#> [1] "Caution Range = Prehypertension"

server <- function(input, output) {
        
        observeEvent(input$submit, {
                output$ranges <- renderPrint({
                        systolic <- input$x1
                        diastolic <- input$x2
                        
                        print(find_bp_state(systolic = systolic, diastolic = diastolic))
                })
        })
        
}
                

        
        
        
