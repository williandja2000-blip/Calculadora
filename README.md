# Calculadora (Bash + Python)

Repositório com dois exemplos de calculadora simples:
- `calculadora.sh` — script em Bash (opera com inteiros usando $(( )))  
- `calculadora.py` — script em Python (suporta ponto flutuante)

## Estrutura
```
/ (raiz do repositório)
├─ calculadora.sh
├─ calculadora.py
├─ comandos.txt
└─ README.md
```

## Como hospedar no GitHub (passo a passo rápido)

### 1) Criar o repositório no GitHub
- Pelo site: acesse https://github.com → clique em **New repository** → dê um nome (ex: `calculadora`), escolha público/privado e crie (não precisa inicializar com README).
- Ou usando o `gh` (GitHub CLI):
  ```bash
  gh auth login
  gh repo create nome-do-repo --public --source=. --remote=origin --push
  ```

### 2) Preparar e enviar os arquivos (linha de comando)
No diretório do seu projeto (onde estão os arquivos gerados), rode:
```bash
# Inicializa git (se ainda não tiver)
git init

# Garante que o .sh tenha permissão de execução (importante para que o bit executável seja rastreado pelo git)
chmod +x calculadora.sh

# Adiciona arquivos e faz commit
git add calculadora.sh calculadora.py README.md comandos.txt
git commit -m "Inicial: adiciona scripts de calculadora e README"

# Conecta ao repositório remoto (substitua pelo seu URL)
git branch -M main
git remote add origin https://github.com/SEU_USUARIO/NOME_DO_REPO.git

# Envia para o GitHub
git push -u origin main
```

> Observação: se o Git pedir autenticação ao fazer `git push`, use suas credenciais GitHub ou um token de acesso pessoal (PAT).

### 3) (Opcional) Hospedar o executável como *release* no GitHub
- Pelo site: vá em **Releases** → **Draft a new release** → crie uma tag (ex: `v1.0`) e faça upload do arquivo `calculadora.sh` como *asset*.
- Com `gh`:
```bash
gh release create v1.0 calculadora.sh --title "calculadora v1.0" --notes "Executável .sh"
```

## Como executar o arquivo `.sh` (documentação para o usuário)
Se você clonou o repositório com `git clone` o arquivo já mantém o bit executável (desde que você tenha marcado com `chmod +x` antes do commit). Caso baixe diretamente pelo navegador, execute no terminal dentro da pasta do projeto:
```bash
# torne o arquivo executável (se necessário)
chmod +x calculadora.sh

# execute
./calculadora.sh
```

## Como executar o código Python
```bash
python3 calculadora.py
```

## Explicação do código em Python (`calculadora.py`)
- O script faz um input interativo com o usuário:
  - pede o primeiro número (`float`), o segundo número (`float`) e a operação desejada.
- Validação simples:
  - se o usuário digitar algo que não seja número, o script avisa e termina.
  - trata divisão por zero, mostrando mensagem apropriada.
- Operações suportadas: `+`, `-`, `*`, `/`.
- Ao final, imprime o resultado (com ponto flutuante quando necessário).

## Observações finais
- O script Bash (`calculadora.sh`) usa aritmética inteira via `$((...))`. Para resultados com casas decimais prefira `calculadora.py`.
- Ao enviar para o GitHub garanta que você substitua `https://github.com/SEU_USUARIO/NOME_DO_REPO.git` pelo URL do seu repositório.
- Depois de enviar, copie o link da página do repositório (ex: `https://github.com/SEU_USUARIO/NOME_DO_REPO`) e cole no campo de entrega do seu curso.
