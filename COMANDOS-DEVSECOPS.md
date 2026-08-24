# 🔐 Comandos DevSecOps

Apostila pessoal dos comandos utilizados no laboratório DevSecOps.

---

# 🐧 1. Linux / Terminal

## `pwd`

Mostra o diretório atual.

```bash
pwd
```

## `ls`

Lista arquivos e pastas.

```bash
ls
```

## `ls -la`

Lista arquivos, incluindo arquivos ocultos, com detalhes.

```bash
ls -la
```

## `cd`

Entra em uma pasta.

```bash
cd devsecops-lab
```

## `cd ..`

Volta uma pasta.

```bash
cd ..
```

## `mkdir`

Cria uma pasta.

```bash
mkdir nome-da-pasta
```

## `touch`

Cria um arquivo vazio.

```bash
touch arquivo.txt
```

## `cat`

Mostra o conteúdo de um arquivo.

```bash
cat README.md
```

## `nano`

Abre um arquivo para edição.

```bash
nano README.md
```

## `echo`

Escreve um texto no terminal ou em um arquivo.

```bash
echo "Meu laboratório DevSecOps"
```

## `grep`

Procura um texto dentro de arquivos.

```bash
grep "SAST" README.md
```

## `chmod`

Altera as permissões de um arquivo ou pasta.

```bash
chmod 600 arquivo.txt
```

## `ps`

Mostra processos em execução.

```bash
ps
```

## `sleep`

Faz o terminal aguardar determinado tempo.

```bash
sleep 5
```

## `kill`

Encerra um processo.

```bash
kill PID
```

---

# 🌿 2. Git

## `git init`

Inicializa um repositório Git.

```bash
git init
```

## `git status`

Mostra o estado atual do repositório.

```bash
git status
```

## `git add`

Adiciona arquivos para o próximo commit.

```bash
git add arquivo.txt
```

## `git add .`

Adiciona todas as alterações.

```bash
git add .
```

## `git commit`

Cria um commit com as alterações adicionadas.

```bash
git commit -m "Minha alteração"
```

## `git log --oneline`

Mostra o histórico de commits de forma resumida.

```bash
git log --oneline
```

## `git branch`

Mostra as branches existentes.

```bash
git branch
```

## `git switch -c`

Cria uma nova branch e entra nela.

```bash
git switch -c security
```

## `git switch`

Troca de branch.

```bash
git switch main
```

## `git branch -m`

Renomeia a branch atual.

```bash
git branch -m main
```

## `git push`

Envia os commits para o GitHub.

```bash
git push origin main
```

## `git pull`

Baixa as alterações do GitHub.

```bash
git pull origin main
```

## `git clone`

Clona um repositório existente.

```bash
git clone URL_DO_REPOSITORIO
```

---

# 🔄 3. GitHub Actions

O workflow do laboratório fica em:

```text
.github/workflows/ci.yml
```

### Executar o pipeline

O pipeline é executado automaticamente quando fazemos:

```bash
git push origin main
```

### Verificar o pipeline

No GitHub:

```text
Actions → CI
```

---

# 🕵️ 4. Gitleaks

Verifica possíveis segredos expostos no código.

```bash
gitleaks detect
```

Executar considerando o histórico Git:

```bash
gitleaks detect --source . --log-opts="--all"
```

---

# 🔎 5. Semgrep / SAST

Verifica vulnerabilidades no código.

```bash
semgrep --version
```

Executar análise automática:

```bash
semgrep --config=auto .
```

Resultado esperado quando não encontrar problemas:

```text
Findings: 0
```

---

# 📌 Regra importante

Antes de fazer um commit:

```bash
git status
```

Depois:

```bash
git add .
```

Depois:

```bash
git commit -m "Descrição da alteração"
```

E finalmente:

```bash
git push origin main
```


---

# 🐳 6. Docker

## `docker --version`

Mostra a versão instalada do Docker.
```bash
docker --version
```

## `sudo systemctl status docker`

Verifica se o serviço do Docker está funcionando.
```bash
sudo systemctl status docker
```

## `sudo usermod -aG docker $USER`

Adiciona o usuário ao grupo docker.
```bash
sudo usermod -aG docker $USER
```

## `groups`

Mostra os grupos aos quais o usuário pertence.
```bash
groups
```

## `docker run hello-world`

Baixa a imagem `hello-world` e cria um container para testar o Docker.
```bash
docker run hello-world
```

## `docker build`

Cria uma imagem Docker usando o Dockerfile do diretório atual.
```bash
docker build -t devsecops-lab .
```

## `docker run`

Cria e executa um container a partir da imagem.
```bash
docker run devsecops-lab
```

## `docker images`

Mostra as imagens Docker disponíveis no computador.
```bash
docker images
```

## `docker ps`

Mostra os containers em execução.
```bash
docker ps
```

## `docker ps -a`

Mostra todos os containers, inclusive os parados.
```bash
docker ps -a
```

## `docker run -it`

Cria um container interativo e abre um terminal dentro dele.
```bash
docker run -it ubuntu:24.04 bash
```

## `whoami`

Mostra o usuário atual dentro do container.
```bash
whoami
```

## `hostname`

Mostra o nome ou identificador do container.
```bash
hostname
```

## `pwd`

Mostra o diretório atual.
```bash
pwd
```

## `ls`

Lista os arquivos e diretórios.
```bash
ls
```

## `cat /etc/os-release`

Mostra informações sobre o sistema operacional do container.
```bash
cat /etc/os-release
```

## `exit`

Sai do container.
```bash
exit
```

## `docker run --name`

Cria um container com um nome definido pelo usuário.
```bash
docker run -it --name lab-ubuntu ubuntu:24.04 bash
```

## `docker start`

Inicia um container que já foi criado.
```bash
docker start lab-ubuntu
```

## `docker exec`

Abre um terminal dentro de um container que já está rodando.
```bash
docker exec -it lab-ubuntu bash
```

## `docker rm`

Remove um container.
```bash
docker rm NOME_OU_ID
```

## `docker rmi`

Remove uma imagem Docker.
```bash
docker rmi NOME_OU_ID
```

### ⚠️ Diferença importante

`docker rm` → remove um **CONTAINER**.

`docker rmi` → remove uma **IMAGEM**.

### 🧠 Conceitos Docker

**Imagem** → modelo usado para criar containers.

**Container** → instância criada a partir de uma imagem.

**`docker run`** → cria e inicia um novo container.

**`docker start`** → inicia um container existente.

**`docker exec`** → executa comandos dentro de um container que já está rodando.

**`Exited (0)`** → o container terminou normalmente, sem erro.

