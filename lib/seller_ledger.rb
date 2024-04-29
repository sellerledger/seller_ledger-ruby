# frozen_string_literal: true

require "seller_ledger/client"
require "seller_ledger/errors"

module SellerLedger
  class << self
    def new(token, url: "https://api.sellerledger.com")
      SellerLedger::Client.new(token: token, url: url)
    end
  end
end
