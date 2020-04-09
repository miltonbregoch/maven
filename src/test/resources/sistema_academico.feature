#Encoding: Cp1252
Feature: Verifica��o de notas no sistema academico 
	Como um usu�rio do sistema academico, utilizando o sistema atrav�s do Firefox
 	Desejo lan�ar as notas dos alunos
	Ent�o poderei verificar a nota e aprova��o de cada aluno
	
Background: 
	Given  Estou acessando o sistema pelo navegador Firefox 
	And  Acesso o sistema pela url "http://localhost:8080/sistema-academico/" 
	
Scenario: Aluno reprovado por nota
	Given Estou acessando o sistema academico
	When Preencho as seguintes nota do aluno:
		|Nota1|Nota2|Nota3| 
		|3.0  |3.0  |3.0  |	
	And Clico no bot�o "Calcular"
	Then Deve ser exibido a mensagem "Reprovado"

Scenario: Aluno aprovado
	Given Estou acessando o sistema academico
	When Preencho as seguintes nota do aluno:
		|Nota1|Nota2|Nota3| 
		|7.0  |7.0  |7.0  |	
	And Clico no bot�o "Calcular"
	Then Deve ser exibido a mensagem "Aprovado"	
	
Scenario: Aluno aprovado prova final
	Given Estou acessando o sistema academico
	When Preencho as seguintes nota do aluno:
		|Nota1|Nota2|Nota3| 
		|4.0  |4.0  |4.0  |
	And Preencho a nota da prova final com "6.0"		
	And Clico no bot�o "Calcular"
	Then Deve ser exibido a mensagem "Aprovado Prova Final"	 	
	
Scenario: Aluno reprovado prova final
	Given Estou acessando o sistema academico
	When Preencho as seguintes nota do aluno:
		|Nota1|Nota2|Nota3| 
		|4.0  |4.0  |4.0  |
	And Preencho a nota da prova final com "4.0"		
	And Clico no bot�o "Calcular"
	Then Deve ser exibido a mensagem "Reprovado Prova Final"	 
		
	