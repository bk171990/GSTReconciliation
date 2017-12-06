class AddGstrHolderColumnToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :gstr_holder, :string
  end
end
