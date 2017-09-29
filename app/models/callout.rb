class Callout < ApplicationRecord
  belongs_to :user

  has_attached_file :calloutpic,
  styles: {medium: "300x300>", thumb: "100x100>"},
  default_url: "/images/avatar.jpg"

validates_attachment_content_type :calloutpic, content_type: /\Aimage\/.*\z/
end

