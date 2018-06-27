# cwl-list-issue
CWL should permit nodes with singleton output to connect with nodes with list inputs

Rabix Executor will execute `ab.cwl` but

currently CWLtool will fail `ab.cwl` because:

```
[step b] Cannot make job: Invalid job input record:
the `input` field is not valid because
  value is a str, expected null or array of <string>
```

Strictly, CWL requires a `valueFrom: $([self])` for this to work. (Bogdan)

Rabix Composer could
- Allow us to add this manually (perhaps as an input option)
- Autodetect and add this automatically
  - Bogdan points out this should account for `scatter`
