module ApplicationHelper
	def formatted_price(price)
		price_with_decimal = price.to_f / 100
		price_in_dollars = sprintf("%.2f", price_with_decimal)
		number_to_currency(price_in_dollars, delimeter: ",")
	end
end
