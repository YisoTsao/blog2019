class Start < ApplicationRecord
	belongs_to :post, optional: true
end
