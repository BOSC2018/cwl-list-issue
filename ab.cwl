class: Workflow
cwlVersion: v1.0
id: ab
label: ab
$namespaces:
  sbg: 'https://www.sevenbridges.com'
inputs:
  - id: input
    type: int
    'sbg:exposed': true
outputs:
  - id: output
    outputSource:
      - b/output
    type: 'int[]?'
    'sbg:x': 82.6402587890625
    'sbg:y': -75
steps:
  - id: a
    in:
      - id: input
        default: 23
        source: input
    out:
      - id: output
    run: ./a.cwl
    label: a
    'sbg:x': -233.359375
    'sbg:y': -75
  - id: b
    in:
      - id: input
        source:
          - a/output
    out:
      - id: output
    run: ./b.cwl
    label: b
    'sbg:x': -75
    'sbg:y': -77
requirements: []
