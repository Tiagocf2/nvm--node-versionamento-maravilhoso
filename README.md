# NVM para Windows

_NVM significa Node Versionamento Maravilhoso e não Node Version Manager, ok_

Aparentemente o `nvm-windows` tem problema com diretórios com espaço (C:/Meu Usuario/etc) e não funciona.  
Mas como é uma ferramente muito útil eu resolvi desenvolver algo parecido, mesmo que bem mais simples.  

## Instalação
[Baixe aqui](https://github.com/Tiagocf2/nvm--node-versionamento-maravilhoso/releases/latest) a ultima release.  

Extraia em algum diretório.  

Copie o caminho do diretório para a variável `PATH`.  
Também é necessário adicionar o caminho para a pasta do NODE da seguinte forma:  
`%NODE_DIR%\%NODE_VERSION%`  

Abra o prompt de comando e digite: `nvm`  
Deverá aparecer a mensagem configuração.

## Configurar
Baixe alguma [versão do node](https://nodejs.org/en/download/releases/) manualmente. Apenas o binário.

Extraia em algum diretório à sua escolha.

Copie o caminho e use o comando `nvm config <diretorio>`, onde `diretorio` é o caminho para o diretório.  

Também é possivel usar o comando `nvm config -h` para ver as instruções.

## Como usar
Utilize o comando `nvm list` para ver as versões disponíveis.  

Utilize o comando `nvm use <versao>` para usar aquela versão. Note que o nome da versão deve ser exatamente igual ao que foi mostrado na lista.

Utilize o comando `node -v` para ver a versão atual do node.  
Note que, sempre que a versão for trocada, **é necessário reabrir** quais quer aplicações que estejam usando o node para as alterações terem efeito. 

