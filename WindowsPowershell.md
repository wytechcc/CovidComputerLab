# Automating with Powershell

If your lab doesn't have any automation, you can use PowerShell scripts to deploy
Folding@Home to help fight COVID19. While they could be [done remotely](https://www.howtogeek.com/117192/how-to-run-powershell-commands-on-remote-computers/), we're
assuming here that you haven't already enabled PowerShell remoting and will be running
scripts on each machine in the lab (we included remote scripts too, if you did).

If your lab has PowerShell remoting enabled already, that can be a real timesaver.


The steps are as follows:

* Install Folding@Home
* Copy the config.xml file - sets team, disease preference
* Start Folding@Home

The Remoting script does that across all machines supplied.

Choose the script you'd like to use ([CovidLabLocal.ps1](./CovidLabLocal.ps1) or
[CovidLabRemote.ps1](./CovidLabRemote.ps1)).

> Haven't tested these yet.
