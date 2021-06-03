class Job < ApplicationRecord
  BRIEFING_MAX_LENGTH = 320

  def briefing
    return description if description.length < BRIEFING_MAX_LENGTH

    "#{description[0, BRIEFING_MAX_LENGTH]}..."
  end
end
