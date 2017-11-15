# dockerhub-notify

Dockerhub hooks for re build notify with telegram

Configure hooks in `hooks/hooks.json`

Check [webhook is a lightweight configurable incoming webhook server which can execute shell commands](https://github.com/adnanh/webhook)
```
[
  {
    "id": "dockerhub",
    "execute-command": "/etc/webhook/scripts/telegram.sh",
    "pass-arguments-to-command": [
     {
       "source": "payload",
       "name": "repository.repo_name"
     },
     {
       "source": "payload",
        "name": "repository.repo_url"
    }
    ]
  }
]
```


## Run

```
docker-compose up -d
```
