export API_KEY_ETHERSCAN=4EE3VQ7H9W8QEQ84EZGMXHSA6E65FHCTHB
export API_KEY_POLYGONSCAN=UM491ZKDXQE53JMQKPT7RGZT3TVAMEXJWV
export PRIVATE_KEY=0x93f82e3b7dc2c5c4c24430e8665f090d76833c72a08d6fc6ee229cc7b666fa12
export SEPOLIA_JSON_RPC=https://eth-sepolia.api.onfinality.io/public
export MUMBAI_JSON_RPC=https://polygon-mumbai-pokt.nodies.app

# To load the variables in the .env file
source .env

# To deploy and verify our contract
forge script script/Counter.s.sol:CounterScript --rpc-url $SEPOLIA_JSON_RPC --broadcast --verify -vvvv
forge script script/Counter.s.sol:CounterScript --rpc-url $MUMBAI_JSON_RPC --broadcast --verify -vvvv

