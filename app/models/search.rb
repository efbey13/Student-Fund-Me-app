class Search < ActiveRecord::Base

  def search_students
    non_sponsored_student = User.status == 'student'
    # && where student sponsor is false or nil
    
    non_sponsored_student = non_sponsored_student.where(["first_name LIKE ?", "%#{first_name}%"]) if first_name.present?
    non_sponsored_student = non_sponsored_student.where(["last_name LIKE ?", "%#{last_name}%"]) if last_name.present?
    non_sponsored_student = non_sponsored_student.where(["email LIKE ?", "%#{email}%"]) if email.present?
    non_sponsored_student = non_sponsored_student.where(["school_name LIKE ?", school_name]) if school_name.present?
    non_sponsored_student = non_sponsored_student.where(["major LIKE ?", major]) if major.present?
    non_sponsored_student = non_sponsored_student.where(["gender LIKE ?", gender]) if gender.present?
    non_sponsored_student = non_sponsored_student.where(["race LIKE ?", race]) if race.present?
    non_sponsored_student = non_sponsored_student.where(["location LIKE ?", location]) if location.present?

    return non_sponsored_student
  end

end


 # create_table "student_sponsors", force: :cascade do |t|
 #    t.integer  "student_id"
 #    t.integer  "sponsor_id"
 #    t.boolean  "sponsored"
 #    t.datetime "created_at", null: false
 #    t.datetime "updated_at", null: false
 #  end