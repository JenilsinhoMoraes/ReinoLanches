Feature: Funcionario
    As a Gerente do Sistema Reino Lanches
    I want to cadastrar, alterar e remover um funcionario
    so that eu nao ter que fazer isso manualmente

Scenario: Cadastrar um funcionario
    Given eu sou um Gerente
    When vou para a tela de funcionario
    And eu clico em "Cadastrar"
    And eu preencho "Nome" com "nome1"
    And eu preencho "Cpf" com "12345678900"
    And eu preencho "Salario" com "100.0"
    And clico em "Cadastrar funcionario"    
    Then o funcionario deve ser cadastrado

Scenario: Alterar um funcionario
    Given eu sou um Gerente
    When vou para a tela de funcionario
    And eu visualizo o funcionario na lista
    And eu clico em "Alterar"
    And eu modifico o campo "Nome" e/ou "Salario"
    And eu clico em "Alterar funcionario"
    Then o funcionario deve ser alterado

Scenario: Remover um funcionario
    Given eu sou um Gerente
    When vou para a tela de funcionario na lista
    And eu visualizo o funcionario na lista
    And eu clico em "Remover"
    Then o funcionario deve ser removido

Scenario: Cadastrar um funcionario invalido
    Given eu sou um Gerente
    When vou para a tela de funcionario
    And eu clico em "Cadastrar"
    And eu preencho "Nome" com "nome1"
    And eu preencho "Cpf" com menos de 11 caracteres
    And eu preencho "Salario" com "200.0"
    And eu clico em "Cadastrar funcionario"
    Then eu visualizo a mensagem "Funcionario invalido"

Scenario: Alterar um funcionario preenchendo campos invalidamente
    Given eu sou um Gerente
    When vou para a tela de funcionario
    And eu visualizo o funcionario na lista
    And eu clico em "Alterar"
    And eu deixo vazio o campo "Nome" e/ou "Salario"
    And eu clico em "Alterar funcionario"
    Then eu visualizo a mensagem "Alteracao invalida" 
