# Teste Desenvolvedor Magrathea Labs

## Problematização
Coleta de mensagens do Twitter com base nas hashtags cadastradas.

Demo: [Heroku](https://magrathea-barbiero-teste.herokuapp.com/)

## Infraestrutura

* Ruby: 2.3.3 ou posterior;
* Rails: 5.2.2
* PostgreSQL: 9.6

### Configurações
Configurações para execução do serviço em dev/test/prod

#### Infraestrutura
1. Clone o repositório: `git clone https://github.com/eduardobarbiero/Magrathea.TesteRuby.git`
2. Instalações dependências: `bundle install`
3. Configuração inicial base de dados: `rails db:setup`
4. Iniciar testes unitários: `rails test`
5. Iniciar servidor de dev: `rails s`

#### Negócio
1. Criar conta no [Twitter Developer](https://developer.twitter.com/) para acesso a API
2. [Criar](https://developer.twitter.com/en/apps/create) um aplicativo de integração
3. Gerar Access Token e Access Token Secret para segurança
4. Configurar parametros de produção nas váriaveis de ambiente:
  
Produção(variáveis de ambiente):

* `ENV['TWITTER_CONSUMER_KEY']`
* `ENV['TWITTER_CONSUMER_SECRET']`
* `ENV['TWITTER_CONSUMER_ACCESS_TOKEN']`
* `ENV['TWITTER_CONSUMER_ACCESS_TOKEN_SECRET']`

Dev/Test:

* [secrets.html](config/secrets.yml)
      
### Execução de Tarefas
Hoje a plataforma utiliza os principios do ActiveJob padrão do Rails. Portanto, exige que tenha um serviço para empurar essa fila de tempos em tempos, então foi criado uma task Rake para execução da rotina.

* Iniciar tarefa: `rake collect_twitter`
* Agendador: [Heroku Scheduler](https://scheduler.heroku.com)
* Execução: A cada 10 minutos

#### Comportamento
Toda e qualquer mensagem coletada é gravado também seu Autor para lincar com a mensagem e posteriormente identificar o usuário. A mensagem que já foi gravada não será mais gravada. A busca é feita somente por hashtags cadastradas e mais recentes(atualmente coleta 10 por vez, porém é configurável).

## Modelagem de dados

* [Modelagem no Draw.io](https://www.draw.io/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1#R7VrbcqM4EP0aHjMFImD70SaXSU2ylZps1dbOS0oGGTQWEiPkW75%2BWyACDsbjzNqJH6hyEumo0aXPaaGWY7lBur6VOEseRESYhexobblXFkKOM7Lhj0Y2JTLwUQnEkkbGqAae6AsxoHkuXtCI5FuGSgimaLYNhoJzEqotDEspVttmM8G2R81wTFrAU4hZG%2F2HRiop0SEa1PhXQuOkGtnxR2VLiitjs5I8wZFYNSD32nIDKYQqS%2Bk6IEw7r%2FJL%2BdxNR%2BvrxCTh6pAH0N3Qjez1y495fPXvRZLOv40fL5BrJqc21YpJBA4wVSFVImLBMbuu0YkUCx4R3a0NtUSlDIoOFH8SpTaGQ7xQAqC6h3shMmPXnrpZTS4WMiR75ltJAMuYqD12fmmn19IYwDjmloiUKLkBA0kYVnS5TTY2molf7Wq3QsF49h1eNv0uMVuYkb7iPFE4thBM1HXsV580eMhXNGWYa4fPBFcVJdp%2FmNGYQzkE%2FxEJwJJIRUG0Y9OgtKsnYUJZdI83YqFdlSsczqvaJBGSvkC3uOIOmqUy3MGsmhZP%2BknDtiQ52DxW1DlvoAe83jK8x7kyQCgYw1lOp6%2FLSIFFyidCKZEao05l6BWS9V4uTevAxJvZcNClqa%2Fq8HV8gyWN0PXQidhHLfYtBAu1OU6hPi5Yl5THLQXAglXBjBRzEggmgOorLkpJUMbeQJUqGJmpTk3kGQ5hrPvC5uqyRr4bT2hIwLMzVmxWCY0iwougV1jhkjzNVCYoV4WrvAl8wKGB%2FcWzPJh4AHWnrsNHm0sVCA5rwbSgloAyVkSrYwfpe6Po90qoqPcPY76yOzrzXov5B5Ln%2Bo3Tx%2F3R4951%2FzDwHe9U%2FPsdkZ%2BAd2DzL2I%2Fqd4EffDvC37vYDmcS%2FBXJ9gW%2ByWzzX2%2FsRl07wu9IP6fIKr3%2B%2BcJon0MLAUBR%2BVEUzeuyz35xyV%2FMPxs8kcd5GeLKQNuFBW8VECEFVEUjoa9Bo6rAce%2B%2FDgR3KI7cvljPqUKjRz7LxQtf4135IGlBsAFJJaFBp51B31OMOkg91BddIvAPfBUeLKdAKEWqed95WLm%2B9s7l%2Br9di6XLu28e7z75dpnXH%2BWcXmjtxmXc2DGVQXh8Ul3O7bY%2FrLlnZct6GA1nE3CNejgfiFZT%2F0pqf%2FI1Cq8S2a%2F0tnj8naSy%2B83gWvzYX%2BwOgMRfH6KNdypggBZYzuTAkgkzzTFMXnuN4QTa%2BFDU63dp%2BxdLwOfFQcymLsf61LxdTUIItVpNyTcdshwnpNcH2LhZwzqmMKZGuo%2BTjWJfJpn5TUdK%2F13U3dWgVkFgEqIwlXXKeH65p%2Fndc4fYV0JRVo2W4FrjQf698Qr5oCb18N2YQ8sRvhLY%2FysHn63iBu5wqF6NsIEwKtrfxepxAXSElwlVJEnwPVQK4mzTuk2s5YjnDjffrnnt5M5F3k7Dpzo%2FQdOqNZfzhdtjX9xcK%2F%2FAw%3D%3D)

