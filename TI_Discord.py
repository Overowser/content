import requests

#Webhook of my channel. Click on edit channel --> Webhooks --> Creates webhook
mUrl = "https://discord.com/api/webhooks/811664082792349707/_nOfPfKy3nrIikQKec9K3AWGErEpDLAaJJMs6tTXbQ1gtL1OEjXWRv9XkW_8KUee6rza"

#Stocks
stocks=["IBM","MRK","F","APHA"]

for i in stocks:
    print("Stock: "+i)
    
    #Technical Indicator
    r = requests.get('https://finnhub.io/api/v1/scan/technical-indicator?symbol='+i+'&resolution=D&token=c0lsqev48v6r1vcsf0hg')

    #Send data to discord
    data = {"content": i+"\n"+str(r.json())}
    response = requests.post(mUrl, json=data)

    print(response.status_code)

    print(response.content)

