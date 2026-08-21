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
