# Nodepay Docker

## Description
This script automates daily, mission, badge, survey and network or node operations for Nodepay Network.

## Features
- **Automated node interaction**
- **Automated claim mission, badge and daily point**
- **Automated answer surveys**
- **Mutil-account session**
- **Proxy and non-proxy support**

## Usage
1. Register nodepay account first, if you dont have you can register [here](https://app.nodepay.ai/register?ref=EsriOh4oROcqWsD), I recomended to `download extension`, `activate your account`, complete the `Proof of Humanhood` and `connect your wallet` first before running the script because this important for `Nodepay TGE`.
2. Get your np_token.
	To get your token, follow this step:
	- Login to your grass account in https://app.nodepay.ai/dashboard, make sure you is in this link before go to next step
	- Go to inspect element, press F12 or right-click then pick inspect element in your browser
	- Go to application tab - look for Local Storage in storage list -> click `https://app.nodepay.ai` and you will see your np_token.
	- or you can go Console tab and paste this 
	```bash
	localStorage.getItem('np_token')
	```
3. Run in docker.
```bash
docker run -d \
   --restart unless-stopped \
   --name nodepay \
   -e TZ=Asia/Shanghai \
   -e NP_TOKEN=eyJhbGcixxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx \ # put your np_token here
   217heidai/nodepay:latest
```

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Note
This script only for testing purpose, using this script might violates ToS and may get your account permanently banned.
