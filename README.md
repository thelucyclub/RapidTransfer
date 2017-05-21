# RapidTransfer
A proxy for PM servers. (In-dev)
## How to use
i. Open up the file, `proxySetup.conf` and make sure that it is configured how you want. Example:
```
#####################
# Proxy management &
# Config file.
#####################
#NOTE: Anything with a "*" is IN BETA, beware these settings, as they may not work as intended.
*addCookies=true# Will add "cookies" to MCPE clients, based on CID, and IP address. Useful for plugin devs.
proxy.IP=0.0.0.0
*assignID=true# This will assign each new UUID a custom ID, ex. John_doe >> john_doe_id.txt == 17 87 26 53 93 47 17 48 56 45 23 etc...
redirectLobby=false# If not connecting from translation (if not being transfered from lobby) to send player to hub
lobbyIP=127.0.0.1# IP for lobby
lobbyPort=19132# Port for lobby
directTranslationProtocol=62.00.01# Recomended to not change this otherwise transfering might break
maxConnections=4# Max amount of players to be transfered at once
dontOverflow=true# Only allows for 1 connection per second otherwise kicks connecting player with reason "Connection throttled. Wait 1 seconds before re-joining"
maxIn=-1# Max in-bound connections (-1 to disable)
maxOut=0# Max out-bound (VPN) connections allowed, -1 to disable.
*allowVPN=false# Kicks players with message "Disable your VPN" if trying to use proxy with VPN (NOTE: if enabled, provide an API key below)
*api_key=_uaf509-default# Key purchased from xioax.com/host-blocker (Leave like this for free version)

####################
# Database
# Configuration
####################
#NOTE: You NEED to fill this out for VPN, redirectLobby, and addCookies to work.
host: 127.0.0.1
port: 3306
username: admin
password: _admin

####################
# Messages /
# languages
####################
join.error.notLobby=This server requires you to connect from the lobby. Redirecting you there now. . .
join.failed.full=Sorry, task full. The maximum in-bound connections has been reached. Please try again in a few seconds.
vpn.notAllowed=Sorry, disable your VPN to continue.
api.error=The api encountered an error. You can not join at this time.
transfer.inProgress=You are being transferred to {server}:{port}
transfer.errorOther=Oops! Something went wrong. RayID: {err_id}
transferScreen.msg.screen=Connecting to {server}:{port}
transferScreen.msg.screenFailed=The requested server did not respond.\nReconnecting to lobby in {seconds} seconds. . .
transfer.msg.default.fullRequest=You just transferred. Please wait {cooldown} seconds.
transfer.consoleMsg.fullRequest={player} is trying to connect with a full request. Details:\n{details}
transfer.disconnectMsg=You have moved to {server} succesfuly!
```
ii. Now save & close, then run `start.cmd` and run the proxy.

iii. You are now done, but please note that the proxy is still in beta, and may cause conflicts and issues.
