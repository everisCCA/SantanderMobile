require 'calabash-android/calabash_steps'
require 'faker'

filepath = File.expand_path File.dirname(__FILE__)
require filepath.gsub('step_definitions', 'pages/formulario_page.rb')
require filepath.gsub('step_definitions', 'pages/home_page.rb')
require filepath.gsub('step_definitions', 'support/utils.rb')

#====================================================================
#  After and Before tests
#====================================================================
Before('@formulario') do
  @formulario_page = FormularioPage.new
end
Before('@home') do
  @home = HomePage.new
end

After('@formulario') do
  long_press("* text:'#{@randomName}' parent android.widget.ListView", {:time=> 2})
  tap_when_element_exists(@home.link_deletar)
end

After() do
	options={:prefix => nil, :name => Utils.timestamp, :label => nil}
      path = default_device.screenshot(options)
      embed(path, "image/png", options[:label] || File.basename(path))
end

#====================================================================
#  Test Steps
#====================================================================

Dado(/^que eu esteja na página inicial$/) do
  wait_for_text("Agenda", timeout: 10)
end
Entao(/^Eu crio e guardo um nome aleatorio$/) do
  @randomName = Faker::Name.name
end

Entao(/^clico no botão "([^\"]*)"$/) do |pageObj|
  tap_when_element_exists(eval("@home." + pageObj))
end
Entao(/^Eu insiro o nome aleatorio no campo nome$/) do
  enter_text(@formulario_page.inp_formulario_nome, @randomName)
  press_back_button
end
Entao(/^Eu insiro um endereco no campo endereço$/) do
  text = Faker::Address.street_address 
  enter_text(@formulario_page.inp_formulario_endereco, text)
  press_back_button
end
Entao(/^Eu insiro um telefone no campo telefone$/) do
  text = Faker::PhoneNumber.subscriber_number + "-" + Faker::PhoneNumber.extension
  enter_text(@formulario_page.inp_formulario_telefone, text)
  press_back_button
end
Entao(/^Eu insiro um site no campo site$/) do
  text = Faker::Internet.url
  enter_text(@formulario_page.inp_formulario_site, text)
  press_back_button
end
Entao(/^Eu volto$/) do
  press_back_button
end
Entao(/^Valido se o usuario foi criado com o nome correto$/) do
  wait_for_text(@randomName, timeout: 10)
end

