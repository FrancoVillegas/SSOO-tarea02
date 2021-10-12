#!/bin/bash
curl https://api.warframe.market/v1/items | jq 'del(.payload.items[].thumb, .payload.items[].url_name)' > items.json
echo "JSON CREADO CON EXITO"