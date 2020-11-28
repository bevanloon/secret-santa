module ApplicationHelper
  def navigation_items
    if user_signed_in?
      [
        {
          text: "Account",
          href: root_path,
          active: true,
        },
        {
          text: "Sign out",
          href: logout_user_path,
        },
      ]
    else
      [
        {
          text: "Sign in",
          href: new_user_session_path,
        },
      ]
    end
  end
end
