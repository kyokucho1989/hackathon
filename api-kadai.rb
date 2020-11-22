require 'pry'
class RentalCalculateApi
  def self.call
    ["2000", "",  "500", "500", "", "1000"]
  end
end
api_price_list =  RentalCalculateApi.call
# # 延滞料金
# # late_fees = addition_late_price * (day-1) + initial_late_price      (day > 0)
# # late_fees = 0     (day = 0)
# # 今まで　initial_price = 500, addition_late_price=500
# # 今後　　initial_price = 1000, addition_late_price=500
# #  ["2000", "",  "500", "500", "", "1000"] => [4, 0,  1, 1, 0, 2]　としたい。
# #  そこからさらに [2500, 0,  1000, 1000, 0, 1500]とする。
# INIT_PRICE = 1000
# ADD_PRICE = 500
# API_INIT_PRICE = 500
# API_ADD_PRICE = 500
# def calc_total_late_price(late_day_list)
#   total_price = 0
#   late_day_list.each do |day|
#     price = (ADD_PRICE * (day-1) + INIT_PRICE )*(day.positive? ?  1:0)
#     total_price += price
#   end
#   total_price
# end

# def calc_late_days(api_price_list)
#   late_days_list = api_price_list.map{|price|
#     ((price.to_i - API_INIT_PRICE )/API_ADD_PRICE + 1 ) * (price.to_i.positive? ?  1:0)
#   }
# end
# late_days_list =  calc_late_days(api_price_list)
# p late_days_list # [4, 0, 1, 1, 0, 2]
# total_late_price = calc_total_late_price(late_days_list)
# p total_late_price # 6000

p api_price_list.map{|price| price.to_i + 500*(price.to_i.positive? ?  1:0)}.sum