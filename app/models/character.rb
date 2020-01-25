class Character < ApplicationResource

  def first_episode_id
    episode.sort.first.match('\d+$').to_s
  end

  def first_episode
    Episode.find(first_episode_id)
  end
end
