require('@nomiclabs/hardhat-waffle')
module.exports = {
  solidity: '0.8.0',
  networks: {
    rinkeby: {
      url: 'https://eth-rinkeby.alchemyapi.io/v2/lykyyLOo67tdobAHYXW0sUR0A4eLPDLm',
      accounts: [
        'b5e00f262afa04cb46d00e4e522b7e8ef4b009413b38ae218ae140f07f0bd7be',
      ],
    },
  },
}

