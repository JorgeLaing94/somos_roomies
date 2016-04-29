class Photo < ActiveRecord::Base
  belongs_to :property
  has_attached_file :photo
  validates_attachment_content_type :photo, :content_type => /^image\/(png|gif|jpeg|jpg)/
  # validation from http://www.munocreative.com/nerd-notes/justpayme
end
