class Board < ApplicationRecord
    has_many :comments
    has_many :board_tag_relations
    has_many :tags, through: :board_tag_relations
    validates :name, presence: true, length: {maximum: 10}
    validates :title, presence: true, length: {maximum: 30}
    validates :body, presence: true, length: {maximum: 1000}
end
