require('dotenv').config()

const { fetchTransactions, fetchBalances } = require('./lib/fetch')
const { transformTransactionsToUpdates, transformBalancesToAppends } = require('./lib/transform')
const { updateSheet, appendSheet } = require('./lib/update')

;(async () => {
  // Fetch Transactions
  const transactions = await fetchTransactions()
  const updates = transformTransactionsToUpdates(transactions)
  updateSheet(updates)

  // Fetch Balances
  const balances = await fetchBalances();
  const balAppends = transformBalancesToAppends(balances);
  appendSheet("Balances", balAppends);
})()
