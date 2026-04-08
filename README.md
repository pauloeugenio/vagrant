# vagrant
Repositorio de automação Vagrant


# Depois de executar os comandos, adicione as seguintes configuracoes de firewall para que você consiga acessar o site:


```bash
vagrant ssh -c "sudo firewall-cmd --permanent --add-service=http"
vagrant ssh -c "sudo firewall-cmd --reload"
```
