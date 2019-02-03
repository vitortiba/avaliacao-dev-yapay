class Service < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  has_many :appointments

  validates :description, presence:true
  validates :value, presence:true, length: { maximum: 10, too_long: "%{count} Excedido tamanho maximo" }
end
