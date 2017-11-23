json.extract! customer, :id, :customer_name, :gstin_no_reg, :arn_no, :address, :cust_place_of_supply, :cust_name_of_commodity_supplied, :cust_tarrif_no, :cust_rate_of_tax, :cust_name_of_service, :cust_serv_acc_code, :cust_pan_no, :created_at, :updated_at
json.url customer_url(customer, format: :json)
