class ApplicationMailer < ActionMailer::Base
  default from:     "N.H.R.運営",
          bcc: "ninja8rrrr@gmail.com, hrtharu29-2@yahoo.co.jp, i-overthink625@tone.ne.jp, l.lawliet_1.75@docomo.ne.jp",
          reply_to: "ninja8rrrr@gmail.com"
  layout 'mailer'
end