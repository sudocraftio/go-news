go-news starter file for Go.

macOS
```
brew install golang
```

```
touch .env
```

Obtain API key here: https://newsapi.org/
```
echo "PORT=80" >> .env
echo "NEWS_API_KEY=" >> .env
```

```
go build
./go-news
```

With Fresh, at project directory:
```
go get github.com/pilu/fresh
fresh
```

Docker Build- At project directory

```
docker build . -t go-news
```

```
docker compose up -d
```

