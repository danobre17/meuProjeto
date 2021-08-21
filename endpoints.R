#* @apiTitle asdasd

#* @apiDescription dfsdfdsf

#* Escreve uma mensagem
#* @param msg Digite uma mensagem
#* @param titulo o titulo da mensagem acima
#* @get /echo
function(msg = "", titulo = "") {
  paste0("Oi Athos!!!: '", msg, "'")
}


#* Retorna a soma de dois números
#* @param a O primeiro número
#* @param b O segundo número
#* @post /sum
function(a, b){
  as.numeric(a) + as.numeric(b)
}

#* Plota um histograma
#* @png
#* @get /hist
function(){
  hist(rnorm(1000))
}

#* Hello world em HTML
#* @serializer html
#* @get /html
function(){
  "<html><h1>hello world</h1></html>"
}


#* @post /user
function(req, id, name) {
  list(
    id = id,
    name = name,
    body = req$body,
    raw = req$bodyRaw
  )
}
