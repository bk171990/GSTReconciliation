json.extract! business_sale, :id, :invoice_date, :serial_no, :gstin_no, :eway_bill, :transportation_mode, :vehicle_no, :date, :time_of_supply, :place_of_supply, :total_invoice, :created_at, :updated_at
json.url business_sale_url(business_sale, format: :json)
