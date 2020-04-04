If your computer lab is managed using Ansible, there are a few existing Ansible roles
for setting up the clients (but not the managment UI). They only need small tweaks to
be configured to limit compute to COVID19.

The two ansible roles we found for Folding@Home are linux-specific, so we're porting them.

## Steps
Note, if "install ansible" is one of your steps, you may as well just run the PowerShell
scripts locally, or even install Folding@Home manually, same number of steps...

1. Install Folding@Home to your manager node
2. Use the ansible role to install all worker nodes
3. Run

> Finding a lab to test this on...
