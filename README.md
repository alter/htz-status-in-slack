# Hetzner status in Slack

With this script we can listen to particular Hetzner Atom feeds for events, posting them
to a Slack channel.

## Features

Why use this instead of the [standard Atom feed plugin for Slack](https://slack.com/apps/A0F81R7U7-rss)?

The main reasons are of design:

- Icon: with an Hetzner icon you can easily tell the origin of the message.
- Clean messages: only title and summary text.
- Color code: green for recovery, yellow for informational and red for other messages.

One last reason is that you can use an existing Slack Webhook with this service,
meaning one less integration installed in your Slack account.

## Usage

You'll need to setup a [Slack Webhook](https://api.slack.com/incoming-webhooks).
Then pass the Webhook URL and the desired Slack channel to receive the notifications,
like `#notifications`, for instance.

### Listen to all feeds

You can run it with Docker:
```
docker run -d docker.io/alter/htz_status_to_slack SLACK_WEBHOOK SLACK_CHANNEL
```

The script will start to listen for changes in [https://www.hetzner-status.de/en.atom](https://www.hetzner-status.de/en.atom)

