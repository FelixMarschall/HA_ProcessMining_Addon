# Process Management meets Home Assistant!

# Requirements

- Computer with amd64 processor
- Homeassistant OS or Supervised installation, otherwise you can't run Addons.

# Installation

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FFelixMarschall%2FHA_ProcessMining_Addon)

1. Go to 'Settings' -> 'Addons' -> 'Add new Addon'
2. Click the three dots in the top right corner
3. Add repository: https://github.com/FelixMarschall/HA_ProcessMining_Addon/
4. Refresh add-ons
5. Find this addon at the end and click install.

## To access Logbook data
- An activation of the supervisor API is necessary to access the homeassistant logbook by API ([documention](https://www.home-assistant.io/integrations/api/)).
Add in `configuration.yaml` a line with `api:` 
- Generate and copy a personal long-term access token in your profil settings.
- Go to the configuration page of this addon.
- Insert token into `credential_secret` and click save.


The installatiion can need some time depending on your internet connection and computer.
