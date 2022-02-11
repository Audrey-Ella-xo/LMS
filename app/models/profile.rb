class Profile < ApplicationRecord
    include EmptyDetection
    belongs_to :user
    mount_uploader :attachment, AttachmentUploader
    mount_uploader :identification, IdentificationUploader
end
