class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: { message: "name is not present"}
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true}
  validates :hourly_rate, inclusion:{ in: (40..200) ,message: "Not in wage range"}
  validates :store, presence: true

end
