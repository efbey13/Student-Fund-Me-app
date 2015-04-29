class AddDefaultToSponsorInStudentSponsors < ActiveRecord::Migration
  def change
    change_column_default :student_sponsors, :sponsored, false
  end
end
