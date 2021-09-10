# labels

This directory contains labels that are synced across the Tinkerbell project using the [label_sync](https://github.com/kubernetes/test-infra/tree/master/label_sync) tool.

# Testing Changes

This will run the label syncer in dry-run mode:

```
go get k8s.io/test-infra/label_sync
label_sync
  --config labels/labels.yml \
  --token $HOME/.github-token \
  --orgs tinkerbell
```

Once you are ready to sync the changes to Github, add `--confirm`

