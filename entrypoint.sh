#!/bin/sh

cd /byo-mint

echo $1

case $1 in
  # Setup for Plaid
  token-plaid)
    echo "Kicking off authentication workflow for $2..."
    npm run token-plaid $2
    ;;

  test-plaid)
    echo "Testing Plaid connection..."
    npm run test-plaid
    ;;

  # Setup for Google Sheets
  token-sheets)
    echo "Authenticating Google Sheets connection..."
    npm run token-sheets
    ;;

  test-sheets)
    echo "Testing Google Sheets connection..."
    npm run test-sheets
    ;;

  run)
    echo "Pulling transactions..."
    node index.js
    ;;
esac
