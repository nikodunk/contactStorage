---------------------------------------------
 L  O  C  A  L


	truffle develop
	
	compile
	
	migrate	--reset

new tab serve frontend:
npm run dev




SET CALENDAR:
	
	contacts.deployed().then(instance => instance.setContacts('fdsa','fdsa','fdsa'))


GET CALENDAR:
	
	contacts.deployed().then(instance => instance.getContacts())






---------------------------------------------
R I N K E B Y



blockchain sync 

	geth --rinkeby --rpc --rpcapi db,eth,net,web3,personal

in new tab, compile and deploy contract
	
	truffle console --network rinkeby

if you don't have an account:
x = web3.personal.newAccount('pw')
web3.eth.getBalance("yourAcctNumber")
web3.eth.accounts

	web3.personal.unlockAccount("0x2df219a1ae3845ab32a041499db27d4bfdb43876", 'password', 15000)

	web3.personal.unlockAccount("0x43928ec2bb4ea1eb6a77a5fd9caf36ca7b15600f", 'pw', 15000)

	compile

	migrate --reset

to check:


SET CALENDAR:
	
	contacts.deployed().then(instance => instance.setContacts('Nicholas Dunkel','Simon Maurer','William Dunkel'))


GET CALENDAR:
	
	contacts.deployed().then(instance => instance.getContacts())



new tab frontend serve:
	
	npm run dev

to deploy:
	
	npm run build, copy app.js and index.html to root folder, github push master.

