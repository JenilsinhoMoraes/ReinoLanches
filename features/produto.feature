Feature: Produto
    As a Funcionario do Sistema Reino Lanches
    I want to cadastrar, alterar e remover um produto
    so that eu nao ter que fazer isso manualmente

Scenario: Cadastrar um produto
    Given eu sou um funcionario
    When vou para a tela de produto
    And eu clico em "Cadastrar"
    And eu preencho "Nome" com "produto1"
    And eu preencho "Valor" com "10"
    And clico em "Cadastrar produto"    
    Then o produto deve ser cadastrado

Scenario: Alterar um produto
    Given eu sou um funcionario
    When vou para a tela de produto
    And eu visualizo o produto na lista
    And eu clico em "Alterar"
    And eu modifico o campo "Nome" e/ou "Valor"
    And eu clico em "Alterar produto"
    Then o produto deve ser alterado

Scenario: Remover um produto
    Given eu sou um funcionario
    When vou para a tela de produto
    And eu visualizo o produto na lista
    And eu clico em "Remover"
    Then o produto deve ser removido

Scenario: Cadastrar um produto inválido
    Given eu sou um funcionario
    When vou para a tela de produto
    And eu clico em "Cadastrar"
    And eu nao preencho "Nome"
    And eu nao preencho "Valor"
    And eu clico em "Cadastrar produto"
    Then eu visualizo a mensagem "Produto invalido"

Scenario: Alterar um produto preenchendo campos invalidamente
    Given eu sou um funcionario
    When vou para a tela de produto
    And eu visualizo o produto na lista
    And eu clico em "Alterar"
    And eu deixo vazio o campo "Nome" e/ou "Valor"
    And eu clico em "Alterar produto"
    Then eu visualizo a mensagem "Alteracao invalida" 
    
