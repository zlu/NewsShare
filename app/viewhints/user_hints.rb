class UserHints < Hobo::ViewHints
  field_names :phone_number => "Phone number"
  children :tracks  
end