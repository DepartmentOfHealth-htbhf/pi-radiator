# Setting up the PI to accept SSH connections

On client machine

 1.	Launch Raspberry Pi Configuration from the Preferences menu
 2.	Navigate to the Interfaces tab
 3.	Select Enabled next to SSH
 4.	Click OK
 
 This should enable ssh connections using the 'pi' username
 

 ssh pi@ip_address_of_pi



# Raspberry Pi dashboard configuration

This directory contains the bits and pieces of configuration required
to set up a Raspberry Pi and display dashboards to various dashboards

You should end up with:

- A Chrome browser in kiosk mode cycling through a number of dashboard
  URLs

## Installing

'Installing' in the loosest sense. The files here are arranged as they
need to be placed into the `pi` user's home directory to get things
going.
At the time of writing, there's no automated process to help with
this.

There are hidden files and directories that matter.



### Dashboard URLs

You should create (or symlink) a file `~/dev-dashboard-urls.sh`,
containing an array `${URLS}` of URLs.

There are a couple of pre-canned dashboard files for the existing
displays we have around the workspace at the time of writing; have a
look at those for the structure and feel free to symlink to them and
keep them up to date.

### Browser tab/URL rotation

The code that starts Chrome will feed it a list of URLs which will be
opened in separate tabs, but there's no built in feature to rotate the
page/tab being displayed.

In order to rotate through the tabs, start up `chromium-browser` on
the Pi and install the [Revolver -
Tabs](https://chrome.google.com/webstore/detail/revolver-tabs/dlknooajieciikpedpldejhhijacnbda?hl=en)
Chrome extension to the browser.[1]

Once you've done that, configure the plugin to start automatically:

- right click on the Revolver button
- choose `Options`
- tick `Auto Start`
- hit the `Save` button




[1] https://code.google.com/archive/p/revolver-chrome-extensions/
