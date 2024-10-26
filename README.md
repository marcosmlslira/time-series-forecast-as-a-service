# time-series-forecast-as-service

📈 Time Series Forecast Service Time Series Forecast Service é uma API desenvolvida com FastAPI para realizar previsões de séries temporais. A API permite que você envie dados históricos e obtenha previsões futuras utilizando o algoritmo Prophet, uma poderosa ferramenta de modelagem de séries temporais criada pelo Facebook.

## 🚀 Funcionalidades

- **Previsão de Séries Temporais:** Envie uma série temporal de dados históricos e obtenha previsões para os próximos períodos.
- **Detecção Automática de Sazonalidades:** O Prophet identifica automaticamente padrões sazonais e tendências nos dados.
- **Configuração Flexível:** Ajuste parâmetros como o horizonte de previsão, periodicidade e outros detalhes para atender às suas necessidades específicas.
- **Resposta Rápida:** Com FastAPI, a API é altamente eficiente e oferece respostas rápidas para solicitações.

## 🛠️ Tecnologias Utilizadas

- **FastAPI**: Framework rápido e moderno para construção de APIs em Python.
- **Prophet**: Ferramenta de modelagem de séries temporais para prever tendências e padrões.
- **Pandas**: Manipulação e análise de dados.
- **Uvicorn**: Servidor ASGI para rodar a aplicação FastAPI.
  
**1. Clone o Repositório:**
```bash
git clone https://github.com/marcosmlslira/time-series-forecast-service.git
```

**2. Instale as Dependências:**
```bash
pip install -r requirements.txt
```

**3. Execute a API:**
```bash
uvicorn app.main:app --reload
```

**4. Envie uma Solicitação para Previsão:**
   Faça uma solicitação POST para o endpoint /forecast com uma série temporal no formato JSON:

```json
{
  "dates": ["2024-01-01", "2024-01-02", "2024-01-03"],
  "values": [123, 150, 130]
}
```
5. **Receba a Previsão:** A API retornará uma previsão com base nos dados enviados, incluindo valores estimados para os próximos períodos.

### 📄 Exemplos de Uso
```python
import requests

url = "http://localhost:8000/forecast"
data = {
    "dates": ["2024-01-01", "2024-01-02", "2024-01-03"],
    "values": [123, 150, 130]
}

response = requests.post(url, json=data)
print(response.json())
```
### 🤝 Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir Issues e Pull Requests.

## 🔗 Links

[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/marcosliradasilva/)
