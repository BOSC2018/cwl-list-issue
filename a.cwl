class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com'
id: a
baseCommand:
  - echo
inputs:
  - id: input
    type: int
outputs:
  - id: output
    type: string?
    outputBinding:
      outputEval: $(inputs.input.toString())
label: a
arguments:
  - position: 0
    prefix: ''
    valueFrom: '"Hi"'
requirements:
  - class: DockerRequirement
    dockerPull: alpine
  - class: InlineJavascriptRequirement
