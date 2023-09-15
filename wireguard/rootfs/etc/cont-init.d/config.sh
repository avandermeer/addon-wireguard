#!/command/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: WireGuard
# Creates the interface configuration
# ==============================================================================
declare -a list
declare addresses
declare allowed_ips
declare config
declare config_dir
declare dns
declare endpoint
declare filename
declare fwmark
declare host
declare interface
declare keep_alive
declare mtu
declare name
declare peer_private_key
declare peer_public_key
declare port
declare post_down
declare post_up
declare pre_down
declare pre_shared_key
declare pre_up
declare server_private_key
declare server_public_key
declare table

if ! bashio::fs.directory_exists '/ssl/wireguard'; then
    mkdir -p /ssl/wireguard ||
        bashio::exit.nok "Could not create wireguard storage folder!"
fi
