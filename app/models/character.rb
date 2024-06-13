# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
    def movie
        the_id = self.movie_id
        matching_movie = Movie.find(the_id)
    end

    def actor

    end
end
