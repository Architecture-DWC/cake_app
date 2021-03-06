class OrderProduct < ApplicationRecord


	belongs_to :order, optional: true
	belongs_to :product, optional: true

	enum make_status: {'着手不可': 0,'製作待ち': 1,'製作中': 2,'製作完了': 3}

	def tax_include_price
		(purchase_price*1.08).round
	end
end
