# VM Demo

A VM with a startup script, setting an ENV in the script,
and then a process on the VM that reads the ENV.

# Steps

1. `make setup` will create the VM with a startup script
2. `make verify` should print:

```
STAGE=staging
```

3. `make ssh` will put you on the VM to explore


# NOTES

Startup scripts only run when the VM boots, so modifying the script
in the GCP console without restarting the VM has no effect.
