class Callout < ApplicationRecord
  belongs_to :user

  has_attached_file :calloutpic,
  styles: {medium: "200x200>", thumb: "150x150>"},
  default_url: "/images/:style/missing.png"

validates_attachment_content_type :calloutpic, content_type: /\Aimage\/.*\z/
end

