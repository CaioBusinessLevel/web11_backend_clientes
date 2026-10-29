# Cadastra todos os clientes de teste de uma vez
# Uso: com o backend rodando, execute  .\cadastrar-clientes.ps1

$url = "http://localhost:8081/api/cliente"
$clientes = @(
  '{"nome": "Maria Silva", "email": "maria.silva@teste.com", "telefone": "99999-1234", "documento": "11122233344", "senha": "Senha@123", "logradouro": "Rua das Flores, 100 - Centro - São Paulo/SP", "ativo": 1}'
  '{"nome": "João Souza", "email": "joao.souza@teste.com", "telefone": "98888-4321", "documento": "22233344455", "senha": "Senha@123", "logradouro": "Av. Paulista, 1500 - Bela Vista - São Paulo/SP", "ativo": 1}'
  '{"nome": "Ana Oliveira", "email": "ana.oliveira@teste.com", "telefone": "97777-1111", "documento": "33344455566", "senha": "Senha@123", "logradouro": "Rua XV de Novembro, 45 - Centro - Curitiba/PR", "ativo": 1}'
  '{"nome": "Carlos Pereira", "email": "carlos.pereira@teste.com", "telefone": "96666-2222", "documento": "44455566677", "senha": "Senha@123", "logradouro": "Rua da Bahia, 820 - Lourdes - Belo Horizonte/MG", "ativo": 0}'
  '{"nome": "Fernanda Costa", "email": "fernanda.costa@teste.com", "telefone": "95555-3333", "documento": "55566677788", "senha": "Senha@123", "logradouro": "Av. Atlântica, 2300 - Copacabana - Rio de Janeiro/RJ", "ativo": 1}'
  '{"nome": "Lucas Rodrigues", "email": "lucas.rodrigues@teste.com", "telefone": "94444-4444", "documento": "66677788899", "senha": "Senha@123", "logradouro": "Rua Augusta, 1200 - Consolação - São Paulo/SP", "ativo": 1}'
  '{"nome": "Juliana Almeida", "email": "juliana.almeida@teste.com", "telefone": "93333-5555", "documento": "77788899900", "senha": "Senha@123", "logradouro": "Av. Boa Viagem, 3100 - Boa Viagem - Recife/PE", "ativo": 0}'
  '{"nome": "Rafael Lima", "email": "rafael.lima@teste.com", "telefone": "92222-6666", "documento": "88899900011", "senha": "Senha@123", "logradouro": "Rua Padre Chagas, 300 - Moinhos de Vento - Porto Alegre/RS", "ativo": 1}'
  '{"nome": "Beatriz Gomes", "email": "beatriz.gomes@teste.com", "telefone": "91111-7777", "documento": "99900011122", "senha": "Senha@123", "logradouro": "Av. Sete de Setembro, 1750 - Vitória - Salvador/BA", "ativo": 1}'
  '{"nome": "Pedro Martins", "email": "pedro.martins@teste.com", "telefone": "98123-8888", "documento": "10120230340", "senha": "Senha@123", "logradouro": "Rua Barão de Jaguara, 950 - Centro - Campinas/SP", "ativo": 1}'
  '{"nome": "Camila Ribeiro", "email": "camila.ribeiro@teste.com", "telefone": "99234-9999", "documento": "20230340450", "senha": "Senha@123", "logradouro": "Av. Beira Mar, 2500 - Meireles - Fortaleza/CE", "ativo": 0}'
  '{"nome": "Gustavo Carvalho", "email": "gustavo.carvalho@teste.com", "telefone": "97345-1010", "documento": "30340450560", "senha": "Senha@123", "logradouro": "Rua 7 de Setembro, 210 - Centro - Florianópolis/SC", "ativo": 1}'
  '{"nome": "Larissa Fernandes", "email": "larissa.fernandes@teste.com", "telefone": "96456-2020", "documento": "40450560670", "senha": "Senha@123", "logradouro": "Av. Goiás, 1100 - Setor Central - Goiânia/GO", "ativo": 1}'
  '{"nome": "Thiago Barbosa", "email": "thiago.barbosa@teste.com", "telefone": "95567-3030", "documento": "50560670780", "senha": "Senha@123", "logradouro": "SQS 308 Bloco C, 101 - Asa Sul - Brasília/DF", "ativo": 1}'
  '{"nome": "Mariana Rocha", "email": "mariana.rocha@teste.com", "telefone": "94678-4040", "documento": "60670780890", "senha": "Senha@123", "logradouro": "Rua Treze de Maio, 640 - Bela Vista - São Paulo/SP", "ativo": 0}'
)

foreach ($c in $clientes) {
  $resp = Invoke-RestMethod -Method Post -Uri $url -ContentType "application/json; charset=utf-8" -Body ([System.Text.Encoding]::UTF8.GetBytes($c))
  Write-Host $resp
}

Write-Host "Pronto! Veja em http://localhost:8081/api/clientes"