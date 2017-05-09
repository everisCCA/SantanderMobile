#language: pt
# features/my_first.feature

@formulario @home
Funcionalidade: Cria um novo registro na agenda e verifica a a criação
Contexto:
  No aplicativo Agenda, acessar e automatizar a criação e a exclusão de um registro com BDD seguindo o seguinte cenário.
  
  Cenario: Verificar registro de um usuário usando a biblioteca Faker para criação dos dados
	
	Dado que eu esteja na página inicial
	E clico no botão "btn_novo_aluno"
	E Eu crio e guardo um nome aleatorio
	E Eu insiro o nome aleatorio no campo nome
	E Eu insiro um endereco no campo endereço
	E Eu insiro um telefone no campo telefone
	E Eu insiro um site no campo site
	E clico no botão "btn_ok"
	Entao Valido se o usuario foi criado com o nome correto
