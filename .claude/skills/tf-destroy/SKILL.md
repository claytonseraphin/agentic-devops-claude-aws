---
name: tf-destroy
description: Run terraform destroy to delete AWS infrastructure created by terraform apply. Display an "Are you sure" prompt before proceeding. Use with extreme caution — this will permanently delete all resources created by terraform apply. Always review the plan before applying destroy.
allowed-tools: Bash, Read
disable-model-invocation: true
---

Run `cd terraform && terraform destroy -auto-approve -no-color` and verify the results.

After destroy completes:
- [ ] Show the key outputs (CloudFront URL, S3 bucket name, distribution ID)
- [ ] Verify every resource that was created by terraform apply is now deleted (check AWS console or use CLI)
- [ ] Report any errors and suggest fixes

If destroy fails, do NOT retry automatically. Show the error and wait for instructions.
