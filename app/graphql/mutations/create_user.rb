class Mutations::CreateUser < Mutations::BaseMutation

  argument :username, String, required: true
  argument :age, Int, required: true
  argument :location, String, required: true

  field :user, Types::UserType, null: false
  field :errors, [String], null: false

  def resolve(username:, age:, location:)
    user = User.new({
      username: username,
      age: age,
      location: location
    })
    if user.save
      {
      user: user,
      errors: []
    }
    else
      {
      user: nil,
      errors: users.errors.full_messages
    }
    end
  end
end
