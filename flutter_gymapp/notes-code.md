# Pasta Modelo  
## Classe Exercicio Modelo  
* O construtor da classe vai pedir a inicialização dos atributos com ~~(via parâmetros obrigatórios posicionais)~~ nomeados com required (colocar entre chaves e escrever o required - por padrão eles são opcionais).  
* construtor nomeado **fromMap** `ExercicioModelo.fromMap()`. Necessário na situação em que tem um map que veio da internet que tem as informações do nosso exercicio modelo, mas que ainda não é um objeto do tipo modelo. O construtor serve para fazer esta conversão, este construtor também serve para quando for estanciar um objeto desta classe.  
O metodo `toMap()` serve para retornar um `Map<String, dynamic>`. Neste caso o metodo retorna a classe que já vai estar estanciada em um Map.  
## Autenticação Tela  
* Widget Visibility - recebe um boleano e a depender da logica ele mostra o que esta dentro do filho dele  

# Pasta Servicos  
* Pasta criada para gerir a comunicação com o firebase

## Main
* RoteadorTela  
Uma stream é uma conexão que se faz, como um feature, mas que fica aberta, desta forma, ela fica mandando informações se uma coisa aconteceu ou não. Neste caso para o widget a stream que será monitorada é firebase_auth.userChanges (se houve alteração no estado do usuário)