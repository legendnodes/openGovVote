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

# Step 5: Create a .env file and store the seed-phrase of your proxy account which will be used to execute the voting.
# Make sure your proxy account has voting privileges for each of your proxied accounts.

sudo nano .env
POLKADOT_PROXY_SEED="your-polkadot-proxy-seed"
KUSAMA_PROXY_SEED="your-kusama-proxy-seed"

# step 6: Modify description.json file. Add your default addresses, amounts and conviction (no need to touch anything else).
# This file will be used as default unless you wish to enter it manually during the voting process.
# Amount and conviction are float and integer, respectively.

sudo nano description.json

# Step 7: give permission and run the process 
chmod +x defvote.js
node defvote.js
