@echo off
@echo.
chcp 65001 > NUL
set command=%1
shift

if "%command%" == "config" goto configure
if not exist "%NODE_DIR%\" goto configureHelp
if "%command%" == "" goto help
if "%command%" == "help" goto help
if "%command%" == "list" goto list
if "%command%" == "use" goto use

goto help

:configureHelp
@echo Parece que o seu NVM não está configurado...
@echo Use o seguinte comando para configurar:
@echo.
@echo nvm config ^<diretorio-do-node^>
@echo.
@echo O "diretorio-do-node" deve ser uma pasta com as diferentes versões do node.
@echo Você pode instalar outras versões do node aqui: https://nodejs.org/en/download/
@echo Lembre-se de baixar o arquivo binário, não o instalador, depois copie e cole na pasta "diretorio-do-node".
@echo.
exit

:configure
if "%1" == "-h" goto configureHelp
if [%1] == [] (
@echo Nenhum diretório especificado
@echo.
goto :configureHelp
)
set dir=%1
shift
:loop
if not [%1] == [] (
set dir=%dir% %1
shift
goto loop
)

if not exist "%dir%\" (
@echo O diretório especificado não existe
exit
)

SETX NODE_DIR "%dir%" > NUL
@echo O NVM foi configurado com sucesso!
@echo use o comando 'help' para mais informações.
exit

:list
dir /b "%NODE_DIR%"
exit

:use
if [%1] == [] (
  @echo nvm use ^<versão^>
  @echo Nenhuma versão especificada!
  exit
)
if not exist "%NODE_DIR%\%1\" (
  @echo A versão %1 não existe ou não está instalada.
  @echo As versões disponíveis são:
  @echo.
  goto list
)
setx NODE_VERSION %1 > NUL
@echo Usando NodeJs %1
exit

:help
@echo NVM (Node Versionamento Maneiro)
@echo Utilidade para trocar versão do Node
@echo.
@echo - help ^| ?: exibe esta mensagem.
@echo - list: Lista as versões disponíveis
@echo - use ^<versão^>: Troca a versão do node
@echo - config ^<diretorio-do-node^> ^| -h: Configura o NVM com o caminho especificado. Utilize -h para ajuda.
@echo.
exit