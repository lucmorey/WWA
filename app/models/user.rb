class User < ApplicationRecord
    has_secure_password
    has_many :callouts, :dependent => :destroy
    
    has_attached_file :profilepic,
    styles: {medium: "300x300>", thumb: "100x100>"},
    default_url: "/images/avatar.jpg"

validates_attachment_content_type :profilepic, content_type: /\Aimage\/.*\z/
end

