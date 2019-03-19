class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3, message: "Name is to Short"}
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0, message: "Need Annual Revenue Greater then 0"}
  validates :mens_apparel, inclusion: {in: [true, false], message: "Mens Apparel must enter true or false"}
  validates :womens_apparel, inclusion: {in: [true, false], message: "Womens Apparel must enter true or false"}
  validate  :womens_or_mens_clothes


  def womens_or_mens_clothes
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "Must sell womens or mens clothes or both not none")
    end
  end

end
