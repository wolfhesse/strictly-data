library(datasets)
library(data.table)
library(Rfacebook)

# take token from the facebook developers' access token tool
# https://developers.facebook.com/tools/accesstoken/

ase_user_token      = 'EAAAAF9JIMbIBAJUbIOXRtADtIYILkiKbp1Hbys96hDrhXMjYAlyzVmiPF9ql7BYlSH9Lz075CjjQdQ9PjZCGk0KGCkIcCzHEqpCCzfn2v2NhVBbYzark4dziBb6QbX1bDkXbBr6vMWIX2agC8SnIgDQvY4jBgMHMnk197W809286ATTwuBcE4mnmHfDcZD'
ase_app_token       = '102312194482|76CNsceYV-O5VZVMHvqn0_YHjo4'

botendienst_token   = 'EAAAAD9PtWewBANkTWYmGUAbrzZCxtJBuCZAbPiApgzdGEPJQQ0EMLmRQlnI5OyawSkz5s7u4nDuOlQgrAn3cW0DvJMFHxwmxYZAyeCTZBnuSzxBW4JXHexOz2ZBUGV8Nde6Y6H7ozLMAE9TpUs8TjGZCsQeRM5VhWCpqBUwuyJpL1tkKO6wTG6CFJgsideM2YZD'


ALT_TOKEN = ase_app_token
ALT_TOKEN <- ase_user_token
ALT_TOKEN <- botendienst_token

execute <-
  function(token =
             ALT_TOKEN) {
    me <- getUsers("me", token, private_info = TRUE)
    print(me)
    friends <- getFriends(token)
    print(friends)

    # return(data.table(data.frame(friends), me))
    return(friends)
  }

result = execute()
