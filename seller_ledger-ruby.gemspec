# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "seller_ledger/version"

Gem::Specification.new do |spec|
  spec.name = "seller_ledger-ruby"
  spec.version = SellerLedger::VERSION.dup
  spec.authors = ["Kevin Reeth"]
  spec.email = ["kevin@sellerledger.com"]

  spec.summary = "Seller Ledger API Client"
  spec.description = "Ruby wrapper for interacting with the Seller Ledger API"
  spec.homepage = "https://developers.sellerledger.com/?ruby#seller-ledger-api"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sellerledger/seller_ledger-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/sellerledger/seller_ledger-ruby/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.executables = spec.files.grep(%r{\bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday"
  spec.add_dependency "json"
end
