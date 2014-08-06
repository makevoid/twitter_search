# search users registered on keybase.io via twitter
# used to provision this app: https://github.com/makevoid/keybase_accounts/tree/btc
# to make microdonations to developers that have some open source projects published on github and have a btc address

output = `t search all " on Keybase.io. " -n 200`

matches = output.scan(regex)

usernames = output.scan(/I am (.+?) on Keybase\.io/m)


for username in usernames
  puts username
end