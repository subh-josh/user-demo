json.(user, :id, :email, :user_name)
json.token user.generate_jwt