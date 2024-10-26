# Nome do ambiente virtual
VENV = venv

# Alvo para criar o ambiente virtual
.PHONY: venv
venv:
	python -m venv $(VENV)

# Alvo para ativar o ambiente virtual no Linux/Mac
.PHONY: activate
activate:
	source $(VENV)/bin/activate

# Alvo para ativar o ambiente virtual no Windows
.PHONY: activate-win
activate-win:
	$(VENV)\Scripts\activate

# Instalar dependências do requirements.txt
.PHONY: install
install:
	$(VENV)/bin/pip install -r requirements.txt

# Alvo para rodar o projeto com o ambiente virtual ativo
.PHONY: run
run:
	$(VENV)/bin/python main.py

# Limpar o ambiente virtual
.PHONY: clean
clean:
	rm -rf $(VENV)