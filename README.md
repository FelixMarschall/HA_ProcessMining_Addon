# HA_ProcessMining_Addon
Brings Process Mining to Home Assistant as Add-On!

This repository provides Home Assistant Addon for Process Mining.

## Installation
[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FFelixMarschall%2FHA_ProcessMining_Addon)

Guide for Home Assistant Addon configuration:  [DOCS](../main/process_management/DOCS.md)

Installation without Home Assistant environment: [SmartHomeProcessMining](https://github.com/FelixMarschall/SmartHomeProcessMining)

## Project Structure
This repository depends on the submodule [SmartHomeProcessMining](https://github.com/FelixMarschall/SmartHomeProcessMining),
which can run locally and access the Home Assistant logbook remotely.

The `process_management` folder contains the Docker build files and `config.yaml` for Home Assistant.

