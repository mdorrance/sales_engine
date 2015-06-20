require_relative "sales_engine"
require_relative 'transaction'

class TransactionRepository

	attr_reader :all
	def initialize(hashes, sales_engine)
		@all = hashes.map { |hash| Transaction.new(hash.to_hash, self)}
		@sales_engine = sales_engine
	end

	def random
		@all.shuffle.first
 	end

 	def find_by_id(id)
		@all.find { |transaction| transaction.id == id }
  end

  	def find_all_by_id(id)
    	@all.select { |transaction| transaction.id == id }
  	end

  	def find_by_invoice_id(invoice_id)
    	@all.find { |transaction| transaction.invoice_id == invoice_id }
  	end

  	def find_all_by_invoice_id(invoice_id)
    	@all.select { |transaction| transaction.invoice_id == invoice_id }
  	end

  	def find_by_credit_card_number(credit_card_number)
    	@all.find { |transaction| transaction.credit_card_number == credit_card_number }
  	end

  	def find_all_by_credit_card_number(credit_card_number)
    	@all.select { |transaction| transaction.credit_card_number == credit_card_number }
  	end

  	def find_by_credit_card_expiration_date(credit_card_expiration_date)
    	@all.find { |transaction| transaction.credit_card_expiration_date == credit_card_expiration_date }
  	end

  	def find_all_by_credit_card_expiration_date(credit_card_expiration_date)
    	@all.select { |transaction| transaction.credit_card_expiration_date == credit_card_expiration_date }
  	end

  	def find_by_result(result)
    	@all.find { |transaction| transaction.result == result }
  	end

  	def find_all_by_result(result)
    	@all.select { |transaction| transaction.result == result }
  	end

  	def find_by_created_at(created_at)
    	@all.find { |transaction| transaction.created_at == created_at }
  	end

  	def find_all_by_created_at(created_at)
    	@all.select { |transaction| transaction.created_at == created_at }
  	end

  	def find_by_updated_at(updated_at)
    	@all.find { |transaction| transaction.updated_at == updated_at }
  	end

  	def find_all_by_updated_at(updated_at)
    	@all.select { |transaction| transaction.updated_at == updated_at }
		end

		def find_invoice_by_invoice_id(invoice_id)
			@sales_engine.find_invoice_by_invoice_id(invoice_id)
		end
end