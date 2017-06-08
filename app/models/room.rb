# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  beds        :integer
#  guests      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :string
#

class Room < ActiveRecord::Base
  validates :description, length: { maximum: 400, message: "la descripción es muy larga" }
  validates :beds, numericality: { only_integer: true, message: "beds no es un número" }
  validates :guests, numericality: { only_integer: true, message: "guests no es un número" }
  validates :title, :description, :beds, :guests, :image_url, presence: true
end
