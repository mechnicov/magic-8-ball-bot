## Magic 8-Ball bot

### Description

This is TelegramBot on Ruby.

At the start, the bot greets you in an arbitrary way.

You ask the bot a question to which a negative or positive answer is expected.

Bot turns Magic 8-Ball over for you and then posts its answer.

You can [read more](https://en.wikipedia.org/wiki/Magic_8-Ball) about Magic 8-Ball.

### Running

1. Download repo to your local directory and type there

```
bundle
```

2. Create the bot at Telegram using [@botfather](https://telegram.me/botfather)

You need your bot's API Token like `285662358:KKLLERo_pXlJJ8lfkQ88pK6MlkfkLK3oPJRgH`.

3. Create `.env` file and write there

```
TELEGRAM_BOT_API_TOKEN = '285662358:KKLLERo_pXlJJ8lfkQ88pK6MlkfkLK3oPJRgH'
```

4. Now you can run app

```
ruby main.rb
```

### Deploying on Heroku

Type before pushing

```
heroku buildpacks:set heroku/ruby
```

After pushing go to dashboard and switch on dynos.

### License

MIT – see `LICENSE`

### Contacts

Email me at

```
'dcdl-snotynu?fl`hk-bnl'.each_char.map(&:succ).join
```
