class User < ApplicationRecord
    has_secure_password
    has_many :callouts

    has_attached_file :profilepic,
    styles: {medium: "200x200>", thumb: "150x150>"},
    default_url: "/images/:style/missing.png"

validates_attachment_content_type :profilepic, content_type: /\Aimage\/.*\z/
end

