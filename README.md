# CovidComputerLab (WIP) [![Build status](https://ci.appveyor.com/api/projects/status/2q3cktd5aq2fujyg?svg=true)](https://ci.appveyor.com/project/cwhitingwy/covidcomputerlab)
automation scripts and instructions for lab administrators to run Folding@Home on their entire (empty) lab! #COVID19

There are already so many existing Dockerfiles for running
Folding@Home ([#foldingathome](https://github.com/topics/foldingathome),
[#folding-at-home](https://github.com/topics/folding-at-home)).
While we will provide instructions for setting this up on as many platforms as possible,
currently there's a shortage of windows automation scripts.

## Example Config.xml

```xml
<config>
  <!-- User Information -->
  <passkey v='yourpasskey(see below)'/>
  <team v='257578'/>
  <power v="full" />
  <cpus v="2" />
  <user v='yourusername'/>
  <!-- Folding Slots -->
  <slot id='0' type='CPU'/>
</config>
```

## External, Existing Projects
* Docker-Compose
  * [stefancrain/folding-at-home](https://github.com/stefancrain/folding-at-home)
* Ansible (Linux hosts...)
  * [jbertozzi.folding_at_home](https://galaxy.ansible.com/jbertozzi/folding_at_home)
  * [peteroyle.folding_at_home](https://galaxy.ansible.com/peteroyle/folding_at_home)

## Automation
> working on it...

* [ ] Locally with PowerShell
* [ ] Remotely (to many hosts with PowerShell Remoting enabled)
* [ ] with Ansible

## Manually

[https://wytechcc.com/help-and-resources/i-have-a-computer/](https://wytechcc.com/help-and-resources/i-have-a-computer/)

* Windows [https://foldingathome.org/support/faq/installation-guides/windows/](https://foldingathome.org/support/faq/installation-guides/windows/)
* Mac [https://foldingathome.org/support/faq/installation-guides/mac/](https://foldingathome.org/support/faq/installation-guides/mac/)
* Linux [https://foldingathome.org/support/faq/installation-guides/linux/](https://foldingathome.org/support/faq/installation-guides/linux/)

## Extra Settings


* For extra bonus points, make sure you setup a passkey that corresponds with your username. This authentication assures that other users cannot falsely report your contributions as their own. [Sign up here](https://apps.foldingathome.org/getpasskey)
* The client supports numerous different diseases.  To make sure your computations are fighting COVID-19, configure your client settings as follows:
    * Webcontrol: “Any disease” in the list “I support research fighting”
    * Advanced Control/FAHControl: Configure > Advanced, select “Any” in the list “Cause Preference”
    * The COVID-19 related projects are on top priority and will be assigned automatically.
* Once you’re setup, we’d love to have you join WTCC’s Folding@Home team.  Our ID number is 257578.  You can see the results of our collective effort below (and also at this URL).

## Something Not Listed Here?
Is your lab using a different kind of automation or replication we haven't covered yet?
Let us know!

# Credits
Not good at powershell, so these repos came in handy:

* [TimMangan/silent-install](https://github.com/TimMangan/silent-install)
* [PSAppDeployToolkit/PSAppDeployToolkit](https://github.com/PSAppDeployToolkit/PSAppDeployToolkit)
