library(Rfacebook)

ALT_TOKEN <-
  'EAACEdEose0cBADxRPYfZAedyiIUXSEf44jblSYXfe74L854NfJq3KIZAy25MFOHDtw7q30YcUYlLxRP6jjBVuAc8zZCdWuEQFyVlhIRF0lq36VUl3jOHZBrq8ucXDmweQN9DxnPbOhskrDoxCXU2egjw7tixZAmgWPBaS2bBVYgZDZD'

execute <-
  function(token =
             ALT_TOKEN) {
    me <- getUsers("me", token, private_info = TRUE)
  }
