# encondig: utf-8
class FormularioPage
#----------------------------------------------------
# Accessable locators
#----------------------------------------------------

	attr_reader :inp_formulario_nome
	attr_reader :inp_formulario_endereco
	attr_reader :inp_formulario_telefone
	attr_reader :inp_formulario_site
	def initialize
	
#----------------------------------------------------
# Definitions
#----------------------------------------------------
		#INPUT
		@inp_formulario_nome = "* id:'formulario_nome'"
		@inp_formulario_endereco = "* id:'formulario_endereco'"
		@inp_formulario_telefone = "* id:'formulario_telefone'"
		@inp_formulario_site = "* id:'formulario_site'"
		
	end
end