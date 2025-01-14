[Following these instructions: https://docs.saltproject.io/salt/install-guide/en/latest/topics/install-by-operating-system/linux-rpm.html](https://docs.saltproject.io/salt/install-guide/en/latest/topics/install-by-operating-system/linux-rpm.html)




```bash
sudo dnf install salt-master-3006.9
sudo dnf install salt-minion-3006.9
sudo dnf install salt-ssh-3006.9
# sudo dnf install salt-syndic-3006.9
# sudo dnf install salt-cloud-3006.9
sudo dnf install salt-api-3006.9
```

Enabling service

```bash
sudo systemctl enable salt-master && sudo systemctl start salt-master
sudo systemctl enable salt-minion && sudo systemctl start salt-minion
sudo systemctl enable salt-syndic && sudo systemctl start salt-syndic
sudo systemctl enable salt-api && sudo systemctl start salt-api
```