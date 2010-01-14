class Track < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    keyword :string
    user_id :integer
    timestamps
  end

  belongs_to :user

  # --- Permissions --- #

  def create_permitted?
    user == acting_user
  end

  def update_permitted?
    user == acting_user
  end

  def destroy_permitted?
    user == acting_user
  end

  def view_permitted?(field)
    user == acting_user
  end

end
