class Profile < ApplicationRecord
    belongs_to :user
    mount_uploader :attachment, AttachmentUploader
end
