module UsersHelper
  # Returns th Gravatar (http://gravatar.cm/) for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, atl: user.name, class: "gravatar")
  end
end
