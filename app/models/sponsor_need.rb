class SponsorNeed < ActiveRecord::Base
  belongs_to :sponsor
  belongs_to :need
end
