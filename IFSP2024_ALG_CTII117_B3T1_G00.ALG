Algoritmo "IFSP2024_ALG_CTII117_G00"
//
//
//
//
// Disciplina   : [Algoritmo]
// Professor   : luiz
// Descrição   : Caixa eletrônico! (função)
// Autor(a)    : Felipe Costa, Mª Eduarda Paiva
// Data atual  : 03/11/2024
Var
   // Seção de Declarações das variáveis

   codigoProd, desc ,und: vetor [1..12] de caractere
   saldoEstoque, quant, preco : vetor [1..12] de real

   itemCupomCodProd : vetor [1..21] de inteiro
   itemCupomQuant : vetor[1..21] de real

   totalEstoque, totalCompra:     real
   codigoInfo: caractere


   ind, IndC, indProd : inteiro

procedimento input

Inicio
   codigoProd[1]  <- "7891025101604"
   codigoProd[2]  <- "7891000120101"
   codigoProd[3]  <- "7891000100103"
   codigoProd[4]  <- "7891000105016"
   codigoProd[5]  <- "7897236904805"
   codigoProd[6]  <- "7891150036567"
   codigoProd[7]  <- "7891999000538"
   codigoProd[8]  <- "7896051126041"
   codigoProd[9]  <- "7622300830083"
   codigoProd[10] <- "4005900036728"
   codigoProd[11] <- "7896185989819"
   codigoProd[12] <- "7898113811452"

   //Descrições dos produtos
   desc[1]  <- "Leite"
   desc[2]  <- "Creme de Leite"
   desc[3]  <- "Leite Condensado"
   desc[4]  <- "Barra Cereal"
   desc[5]  <- "Água"
   desc[6]  <- "Caldo de Galinha"
   desc[7]  <- "Iogurte"
   desc[8]  <- "Leite Fermentado"
   desc[9]  <- "Biscoito Recheado"
   desc[10] <- "Desodorante"
   desc[11] <- "VitaminaC"
   desc[12] <- "Lanche"

   //Preço dos produtos
   preco[1]  <- 3.00
   preco[2]  <- 3.70
   preco[3]  <- 4.50
   preco[4]  <- 3.20
   preco[5]  <- 2.15
   preco[6]  <- 1.35
   preco[7]  <- 2.60
   preco[8]  <- 1.80
   preco[9]  <- 1.90
   preco[10] <- 11.10
   preco[11] <- 35.20
   preco[12] <- 9.50

   //Quantidade dos produtos
   quant[1]  <- 15
   quant[2]  <- 28
   quant[3]  <- 23
   quant[4]  <- 18
   quant[5]  <- 32
   quant[6]  <- 12
   quant[7]  <- 25
   quant[8]  <- 33
   quant[9]  <- 13
   quant[10] <- 14
   quant[11] <- 16
   quant[12] <- 19

   //Unidade dos produtos
   und[1]  <- "l"
   und[2]  <- "lt"
   und[3]  <- "cx"
   und[4]  <- "und"
   und[5]  <- "cx"
   und[6]  <- "cx"
   und[7]  <- "und"
   und[8]  <- "und"
   und[9]  <- "und"
   und[10] <- "und"
   und[11] <- "und"
   und[12] <- "und"

fimprocedimento

procedimento impressao

Inicio

   escreval ("-----------------------------------------------------------------")
   escreval ("|    Código     |     descrição     | Preço (R$)| Quant.Estoque |")
   escreval ("-----------------------------------------------------------------")

   para ind de 1 ate 12 faca

      escrevaL("| ", codigoProd[ind]:13," | ",desc[ind]:17," | R$ ",preco[ind]:6:2," |  ", quant[ind]:5:2, " ", und[ind]:6," |")
      totalEstoque <- totalEstoque + (preco[ind] * quant[ind])

   fimpara

   escreval("-----------------------------------------------------------------")
   escreval("|                           Valor total do estoque: R$ ",totalEstoque:8:2," |")
   escreval("-----------------------------------------------------------------")
   escreval
   escreval(" Aperte F9 para continuar...")

   pausa
   limpatela

fimprocedimento


Inicio

   // Seção de Comandos, procedimento, funções, operadores, etc...

MudaCor("Preto","FRENTE")
MudaCor("Branco","FUNDOS" )

input
//impressao

// Leitura/Verificação do código informado

repita
   escreval(" ")
   escreva ("Informe o código do produto desejado: ")
   leia (codigoInfo)
   escreval(" ")

   se codigoInfo <> "fim" entao
      indC<- indC + 1
      ind <- 1

      // Armazenando índice do valor encontrado
      enquanto (ind <> 0) e (itemCupomCodProd[indC] = 0) faca
         se (codigoProd[ind] = codigoInfo ) entao
            itemCupomCodProd[indC] <- ind
         fimse
         ind <- (ind + 1) % 13
      fimenquanto

      se (itemCupomCodProd[indC] = 0) entao
         //Mensagem de erro
          indC <- indC - 1
         escreva ("Produto ", codigoInfo:13, " não foi encontrado! Digite novamente... ")
         escreval(" ")

      senao
         // Input quantidade
         escreva ("Informe a quantidade desejada desse produto: ")
         leia (itemCupomQuant[indC])
         limpatela
      fimse
   fimse

ate (codigoInfo = "fim")
limpatela



//CUPOM FISCAL

escreval ("========================================================================")
escreval ("| Supermercado IFSP Cubatão - onde seu conhecimento cresce um montão   |")
escreval ("========================================================================")

ind <- 0
enquanto indC <> 0 faca

   ind <- ind + 1
   indProd <- itemCupomCodProd[ind]

   se (indProd <> 0) E (ind <= 20) ENTAO
      escreval("| item ", ind:2 ," : ", codigoProd[indProd]:13, " - ", desc[indProd]:17,  itemCupomQuant[ind]:6:2, "  x ", preco[indProd]:6:2 , " = ", (itemCupomQuant[ind] * preco[ind]):6:2, " |")
      totalCompra <- totalCompra + (itemCupomQuant[ind] * preco[ind])
   fimse

   indC <- indC - 1

fimenquanto


escreval ("========================================================================")
escreval ("| Total de itens :", ind:3, "":16, " Valor total dos itens: ", "R$", TotalCompra:7:2," |")
escreval ("========================================================================")







Fimalgoritmo
