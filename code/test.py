from simplegmail import Gmail

params = {
  "to": "6156project@gmail.com",
  "sender": "6156project@gmail.com",
  "subject": "My second email",
  "msg_html": "<h1>Woah, my first email!</h1><br />This is an HTML email.",
  "msg_plain": "Hi\nThis is a plain text email.",
  "signature": True  # use my account signature
}
def send_email(params):
    gmail = Gmail() # will open a browser window to ask you to log in and authenticate
    message = gmail.send_message(**params)  # equivalent to send_message(to="you@youremail.com", sender=...)

send_email(params)
