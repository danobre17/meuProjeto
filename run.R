library(plumber)
r <- plumb("endpoints.R")

r$handle("GET", "/", function(req, res){
  "Obrigada pelas aulas!!"
})


r$run(port = as.integer(Sys.getenv("PORT", unset = 8000)), host = "0.0.0.0")
