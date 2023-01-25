# complete these before execution:
# - Rest API Key: OGQ0N... from https://dashboard.onesignal.com/apps/16f39668-.../settings/keys_and_ids
# - App ID: 16f39668-... from https://dashboard.onesignal.com/apps/16f39668-.../settings/keys_and_ids
# - Receiver/Player ID: 117a7ddb-... from https://dashboard.onesignal.com/apps/16f39668-.../players

curl --request POST \
     --url https://onesignal.com/api/v1/notifications \
     --header 'Authorization: Basic OGQ0N...' \
     --header 'accept: application/json' \
     --header 'content-type: application/json' \
     --data '
{
     "app_id": "16f39668-...",
     "include_player_ids": [
          "117a7ddb-..."
      ],
     "contents": {
          "en": "English or Any Language Message",
          "de": "German Message",
          "es": "Spanish Message"
     },
     "name": "SENT_FROM_CURL"
}
'
