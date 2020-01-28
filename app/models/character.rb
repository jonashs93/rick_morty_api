class Character < ApplicationResource

  delegate :air_date, to: :first_episode, prefix: true, allow_nil: true

  def order_episode
    episode.sort
  end

  def first_episode_id
    order_episode.first.match('\d+$').to_s
  end

  def first_episode
    Episode.find(first_episode_id)
  end
end
