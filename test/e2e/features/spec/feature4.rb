require 'capybara/cucumber'
Capybara.app = MyRackApp

Dado('Que um aluno faz um novo requerimento na pagina ') do 
    visit ('/requerimentos/novo')
end

Quando('Ele selecionar a Disciplina {string}, a Prova {string} e a Argumentação') do | Disciplina, Prova, Argumentação|
    fill_in('InputDisciplina', with: Disciplina)
    fill_in('InputProva', with: Prova)
    fill_in('InputArgumentacao', with: Argumentação)
    click_button('Salvar')
end

Então('Ele deveria ver o requerimento na rota /requerimentos') do 
    visit ('/requerimentos')
end
