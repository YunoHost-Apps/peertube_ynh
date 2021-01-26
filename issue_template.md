---
name: Bug report
about: Create a report to help us debug, it would be nice to fill the template as much as you can to help us, help you and help us all.

---

**How to post a meaningful bug report**
1. *Read this whole template first.*
2. *Determine if you are on the right place:*
   - *If you were performing an action on the app from the webadmin or the CLI (install, update, backup, restore, change_url...), you are on the right place!*
   - *Otherwise, the issue may be due to PeerTube itself. Refer to its documentation or repository for help.*
   - *If you have a doubt, post here, we will figure it out together.*
3. *Delete the italic comments as you write over them below, and remove this guide.*
--- 

**Describe the bug**
*A clear and concise description of what the bug is.*

**Versions**
- Hardware: *VPS bought online / Old laptop or computer / Raspberry Pi at home / Internet Cube with VPN / Other ARM board / ...*
- YunoHost version: x.x.x
- I have access to my server: *Through SSH | through the webadmin | direct access via keyboard / screen | ...*
- Are you in a special context or did you perform some particular tweaking on your YunoHost instance ?: *no / yes*
  - If yes, please explain:
- Using, or trying to install package version/branch:
- If upgrading, current package version: *can be found in the admin, or with `yunohost app info $app_id`*

**To Reproduce**
*Steps to reproduce the behavior.*
- *If you performed a command from the CLI, the command itself is enough. For example:*
    ```sh
    sudo yunohost app install peertube
    ```
- *If you used the webadmin, please perform the equivalent command from the CLI first.*
- *If the error occurs in your browser, explain what you did:*
   1. *Go to '...'*
   2. *Click on '...'*
   3. *Scroll down to '...'*
   4. *See error*

**Expected behavior**
*A clear and concise description of what you expected to happen. You can remove this section if the command above is enough to understand your intent.*

**Logs**
*After a failed command, YunoHost makes the log available to you, but also to others, thanks to `yunohost log display [log name] --share`. The actual command, with the correct log name, is displayed at the end of the failed attempt in the CLI. Execute it and copy here the share link it outputs.*
*If applicable and useful, add screenshots to help explain your problem.*
