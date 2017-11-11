class UserChartedAccountant < ApplicationRecord
  belongs_to :user
  belongs_to :charted_accountant
end
