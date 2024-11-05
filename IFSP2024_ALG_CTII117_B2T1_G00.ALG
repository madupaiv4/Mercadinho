Algoritmo "IFSP2024_ALG_CTII117_G00"
// Disciplina   : [Algoritmo]
// Professor   : luiz
// Descrição   : Caixa eletrônico! (função)
// Autor(a)    : Felipe Costa, Mª Eduarda Paiva
// Data atual  : 31/08/2024
Var
   // Seção de Declarações das variáveis

   codigoProd1, codigoProd2, codigoProd3, codigoProd4, codigoProd5, codigoProd6, codigoProd7: caracter
   codigoProd8, codigoProd9, codigoProd10, codigoProd11, codigoProd12: caracter

   desc1, desc2, desc3, desc4, desc5, desc6, desc7, desc8, desc9: caracter
   desc10, desc11, desc12: caracter

   und1, und2, und3,und4, und5, und6, und7, und8, und9: caracter
   und10, und11, und12: caracter

   saldoEstoque1, saldoEstoque2, saldoEstoque3, saldoEstoque4, saldoEstoque5 : real
   saldoEstoque6, saldoEstoque7, saldoEstoque8, saldoEstoque9, saldoEstoque10 : real
   saldoEstoque11, saldoEstoque12: real

   preco1, preco2, preco3, preco4, preco5, preco6: real
   preco7, preco8, preco9, preco10, preco11, preco12: real

   quant1, quant2, quant3, quant4, quant5, quant6, quant7, quant8, quant9: real
   quant10, quant11, quant12: real

   saldoEstoque:     real
   precoProd:        real
   valorTotalCompra: real

   descricaoprod: caracter
   codigoProd:   caracter
   undProd: caracter
   quantProd:    real
   quantInfo : real
   produtoExiste: Logico
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   produtoExiste <- verdadeiro

   codigoProd1 <- ("7891025101604")
   desc1 <- ("Leite")
   preco1 <- 3.0
   quant1 <- 15
   und1 <- ("l")
   saldoEstoque1 <- (preco1 * quant1)

   codigoProd2 <- ("7891000120101")
   desc2 <-  ("Creme de Leite")
   preco2 <- 3.70
   quant2 <- 28,00
   und2 <- ("lt")
   saldoEstoque2 <- (preco2 * quant2)

   codigoProd3 <- ("7891000100103")
   desc3 <-  ("Leite Condensado")
   preco3 <- 4.50
   quant3 <- 23,00
   und3 <- ("cx")
   saldoEstoque3 <- (preco3 * quant3)

   codigoProd4 <- ("7891000105016")
   desc4 <-  ("Barra Cereal")
   preco4 <- 3.20
   quant4 <- 18.00
   und4 <- ("und")
   saldoEstoque4 <- (preco4 * quant4)

   codigoProd5 <- ("7897236904805")
   desc5 <-  ("Água")
   preco5 <- 2.15
   quant5 <- 32.00
   und5 <- ("cx")
   saldoEstoque5 <- (preco5 * quant5)

   codigoProd6 <- ("7891150036567")
   desc6 <-  ("Caldo de Galinha")
   preco6 <- 1.35
   quant6 <- 12.00
   und6 <- ("cx")
   saldoEstoque6 <- (preco6 * quant6)

   codigoProd7 <- ("7891999000538")
   desc7 <-  ("Iogurte")
   preco7 <- 2.60
   quant7 <- 25.00
   und7 <- ("und")
   saldoEstoque7 <- (preco7 * quant7)

   codigoProd8 <- ("7896051126041")
   desc8 <-  ("Leite Fermentado")
   preco8 <- 1.80
   quant8 <- 33.00
   und8 <- ("und")
   saldoEstoque8 <- (preco8 * quant8)

   codigoProd9 <- ("7622300830083")
   desc9 <-  ("Biscoito Recheado")
   preco9 <- 1.90
   quant9 <- 13.00
   und9 <- ("und")
   saldoEstoque9 <- (preco9 * quant9)

   codigoProd10 <- ("4005900036728")
   desc10 <-  ("Desodorante")
   preco10 <- 11.10
   quant10 <- 14.00
   und10 <- ("und")
   saldoEstoque10 <- (preco10 * quant10)

   codigoProd11 <- ("7896185989819")
   desc11 <-  ("VitaminaC")
   preco11 <- 35.20
   quant11 <- 16
   und11 <- ("und")
   saldoEstoque11 <- (preco11 * quant11)

   codigoProd12 <- ("7898113811452")
   desc12 <-  ("Lanche")
   preco12 <- 9.50
   quant12 <- 19.00
   und12 <- ("und")
   saldoEstoque12 <- (preco12 * quant12)


   saldoEstoque <- (( preco1 * quant1)+( preco2 * quant2)+( preco3 * quant3)+( preco4 * quant4)+( preco5 * quant5)+( preco6 * quant6)+( preco7 * quant7)+( preco8 * quant8)+( preco9 * quant9)+( preco10 * quant10)+( preco11 * quant11)+( preco12 * quant12))

   escreval ("-----------------------------------------------------------------")
   escreval ("|    Código     |      descrição      |  Preço  | Quant.Estoque |")
   escreval ("-----------------------------------------------------------------")

   escreval ("| ", codigoProd1:13," | ",desc1:19," | R$ ",preco1:5:2," |  ",quant1:5," ",und1:4," |")
   //       ("| 7891025101604   |    Leite     |    R$  5.25       | 15.00 l     |")

   escreval ("| ", codigoProd2:13," | ",desc2:19," | R$ ",preco2:5:2," |  ",quant2:5:2," ",und2:4," |")
   //       ("  7891000120101   | Creme de Leit|    R$  6.70       | 28.00 lt    |")

   escreval ("| ", codigoProd3:13," | ",desc3:19," | R$ ",preco3:5:2," |  ",quant3:5:2," ",und3:4," |")
   //       ("| 7891000100103   | Leite Conden.|    R$  4.30       | 23.00 cx    |")

   escreval ("| ", codigoProd4:13," | ",desc4:19," | R$ ",preco4:5:2," |  ",quant4:5:2," ",und4:4," |")
   //         |  7891000105016  | Barra Cereal |    R$  3.20       | 18.00 und

   escreval ("| ", codigoProd5:13," | ",desc5:19," | R$ ",preco5:5:2," |  ",quant5:5:2," ",und5:4," |")
   //         |  7897236904805  |    Água      |    R$  2.15       | 32.00 gf

   escreval ("| ", codigoProd6:13," | ",desc6:19," | R$ ",preco6:5:2," |  ",quant6:5:2," ",und6:4," |")
   //         |  7891150036567  | Caldo de gal |    R$  1.35       | 12.00 cx

   escreval ("| ", codigoProd7:13," | ",desc7:19," | R$ ",preco7:5:2," |  ",quant7:5:2," ",und7:4," |")
   //         |  7891999000538  |   Iogurte    |    R$  2.60       | 25.00 und

   escreval ("| ", codigoProd8:13," | ",desc8:19," | R$ ",preco8:5:2," |  ",quant8:5:2," ", und8:4," |")
   //         |  7896051126041  | Leite Fermen |    R$  1.80       | 33.00 und

   escreval ("| ", codigoProd9:13," | ",desc9:19," | R$ ",preco9:5:2," |  ",quant9:5:2," ",und9:4," |")
   //         |  7622300830083  | Biscoito rec |    R$  1.90       | 13.00 und

   escreval ("| ", codigoProd10:13," | ",desc10:19," | R$ ",preco10:5:2," |  ",quant10:5:2," ",und10:4," |")
   //         |  4005900036728   |  Desodorante  |    R$ 11.10       | 14.00 und

   escreval ("| ", codigoProd11:13," | ",desc11:19," | R$ ",preco11:5:2," |  ",quant11:5:2," ",und11:4," |")
   //         |  7896185989819   |  Vitamina C   |    R$ 35.20       | 16.00 und

   escreval ("| ", codigoProd12:13," | ",desc12:19," | R$ ",preco12:5:2," |  ",quant12:5:2," ",und12:4," |")
   //         |  7898113811452   |   Lanche      |    R$ 9.50        | 19.00 und


   escreval ("-----------------------------------------------------------------")
   escreval ("|                             Valor total do estoque: R$",saldoEstoque:5:2," |")
   escreval ("-----------------------------------------------------------------")
   escreval(" ")
   escreval(" ")
   escreval(" ")
   escreval(" ")
   escreval(" ")
   valorTotalCompra <- 0

   escreval ("-------------------------------------------------------------------------------")
   escreval ("| SUPERMERCADO FEDERAL                                                        |")
   escreval ("-------------------------------------------------------------------------------")
   escreval ("|  Código Prod.  |  Descrição Produto  | Preço (R$)| Quant.  Und | Valor item |")
   escreval ("-------------------------------------------------------------------------------")

   repita
      escreval(" ")
      escreva ("Informe o código do produto desejado: ")
      leia (codigoProd)
      escreval(" ")
      escolha codigoProd

      caso codigoProd1
         saldoEstoque <- saldoEstoque1
         descricaoProd <- desc1
         precoProd <- preco1
         quantProd <- quant1
         undProd <- und1

      caso codigoProd2
         saldoEstoque <- saldoEstoque2
         descricaoProd <- desc2
         precoProd <- preco2
         quantProd <- quant2
         undProd <- und2

      caso codigoProd3
         saldoEstoque <- saldoEstoque3
         descricaoProd <- desc3
         precoProd <- preco3
         quantProd <- quant3
         undProd <- und3

      caso codigoProd4
         saldoEstoque <- saldoEstoque4
         descricaoProd <- desc4
         precoProd <- preco4
         quantProd <- quant4
         undProd <- und4

      caso codigoProd5
         saldoEstoque <- saldoEstoque5
         descricaoProd <- desc5
         precoProd <- preco5
         quantProd <- quant5
         undProd <- und5

      caso codigoProd6
         saldoEstoque <- saldoEstoque6
         descricaoProd <- desc6
         precoProd <- preco6
         quantProd <- quant6
         undProd <- und6

      caso codigoProd7
         saldoEstoque <- saldoEstoque7
         descricaoProd <- desc7
         precoProd <- preco7
         quantProd <- quant7
         undProd <- und7

      caso codigoProd8
         saldoEstoque <- saldoEstoque8
         descricaoProd <- desc8
         precoProd <- preco8
         quantProd <- quant8
         undProd <- und8

      caso codigoProd9
         saldoEstoque <- saldoEstoque9
         descricaoProd <- desc9
         precoProd <- preco9
         quantProd <- quant9
         undProd <- und9

      caso codigoProd10
         saldoEstoque <- saldoEstoque10
         descricaoProd <- desc10
         precoProd <- preco10
         quantProd <- quant10
         undProd <- und10

      caso codigoProd11
         saldoEstoque <- saldoEstoque11
         descricaoProd <- desc11
         precoProd <- preco11
         quantProd <- quant11
         undProd <- und11

      caso codigoProd12
         saldoEstoque <- saldoEstoque12
         descricaoProd <- desc12
         precoProd <- preco12
         quantProd <- quant12
         undProd <- und12

      outrocaso
         produtoExiste <- falso
      fimescolha

      se ( codigoProd <> ("fim")) entao
         se (produtoExiste = falso) entao
            escreva ("Produto ", codigoProd:13, " não foi encontrado!")
             escreval(" ")
         senao
            escreva ("Informe a quantidade desejada desse produto: ")
            leia (quantinfo)

            se (quantinfo <= quantProd) entao
                escreval("")
               escreval ("| ", codigoProd:14," | ", descricaoProd:20,"| R$ ", precoProd:6:2," | ", quantProd:4:2,"  ",undProd:5,"| ",(precoProd * quantProd):10:2," |")
               escreval ("Estoque atualizado: ", (quantProd - quantinfo))
               valorTotalCompra <- valorTotalCompra + (precoProd * quantProd)
               escreval(" ")
            senao
               escreval ("Não há quantidade suficiente em estoque.")
            fimse
         fimse
      fimse
   ate (codigoProd = "fim")

   escreval ("-------------------------------------------------------------------------------")
   escreval ("|                                             Valor total da compra: R$",valorTotalCompra:6:2," |")
   escreval ("-------------------------------------------------------------------------------")




Fimalgoritmo
