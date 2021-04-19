import finnhub
import requests

# Setup client
finnhub_client = finnhub.Client(api_key="c0lsqev48v6r1vcsf0hg")

# Stock candles
res = finnhub_client.stock_candles('AAPL', 'D', 1590988249, 1591852249)
print(res)

#Convert to Pandas Dataframe
import pandas as pd
print(pd.DataFrame(res))

#Webhook of my channel. Click on edit channel --> Webhooks --> Creates webhook
mUrl = "https://discord.com/api/webhooks/811664082792349707/_nOfPfKy3nrIikQKec9K3AWGErEpDLAaJJMs6tTXbQ1gtL1OEjXWRv9XkW_8KUee6rza"

data = {"content": str(pd.DataFrame(res))}
response = requests.post(mUrl, json=data)

print(response.status_code)

print(response.content)
