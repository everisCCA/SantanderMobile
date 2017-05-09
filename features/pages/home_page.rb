# encondig: utf-8
class HomePage
#----------------------------------------------------
# Accessable locators
#----------------------------------------------------

	attr_reader :btn_novo_aluno
	attr_reader :btn_ok
	attr_reader :link_deletar
	def initialize
#----------------------------------------------------
# Definitions
#----------------------------------------------------
		#BUTTONS
		@btn_novo_aluno = "* id:'novo_aluno'"
		@btn_ok = "* id:'menu_formulario_ok'"
		
		#LINKS
		@link_deletar = "* text:'Deletar Aluno'"
		
	end
end