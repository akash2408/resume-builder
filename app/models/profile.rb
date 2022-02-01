class Profile < ApplicationRecord
    has_one_attached(:profile_image)
    has_many(:educations, dependent: :destroy)
    has_many(:experiences, dependent: :destroy)
    has_many(:projects, through: :experiences)
    accepts_nested_attributes_for(:educations , reject_if: :reject_education_create, allow_destroy: true)
    accepts_nested_attributes_for(:experiences , reject_if: :reject_experience_create, allow_destroy: true)
    accepts_nested_attributes_for(:projects)


    belongs_to :user

    def reject_education_create(education)
        education[:degree].blank? or education[:school].blank? or education[:start].blank? or education[:end].blank?
    end
    def reject_experience_create(experience)
        experience[:position].blank? or experience[:company].blank? or experience[:start].blank? or experience[:end].blank?
    end
end