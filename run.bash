#Step 1: Install NVM
curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
source ~/.bashrc

#Step 2: Install Node.js
nvm install --lts
node -v
npm -v

#Step 3: Install dotenv
npm install dotenv
npm install @polkadot/api

# Step 4: Pull openGovVote folder
git clone https://github.com/legendnodes/openGovVote.git
cd openGovVote

# Step 5: Create .env file and store seed-phrase as follow
sudo nano .env
POLKADOT_PROXY_SEED="your-polkadot-proxy-seed"
KUSAMA_PROXY_SEED="your-kusama-proxy-seed"

# step 6: modify description.json file. Add your default addresses, amounts and conviction. This will be used as default unless you wish to enter it manually
# The idea is that if you usually use the same addresses, amounts and conviction, then you can avoid typing it over and over
# amount and conviction are float and integer, respectively
# If you use default, the only fields you should type are the referendums (comma separated) and side (aye/nay)
# if you don't want to use default - you'll have the opportunity to enter address, amount and conviction manually 

sudo nano description.json


# make sure your proxy account has voting privileges for each of your proxied accounts 

# Step 7: give permission and run the process 
chmod +x defvote.js
node defvote.js




