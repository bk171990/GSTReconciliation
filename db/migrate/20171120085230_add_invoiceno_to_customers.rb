class AddInvoicenoToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :invoice_no, :string
  end
end
