class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com'
id: b
baseCommand:
  - echo
inputs:
  - id: input
    type: 'string[]?'
outputs:
  - id: output
    type: 'int[]?'
    outputBinding:
      outputEval: |-
        ${
        var arr = [];
        for (var i = 0; i < inputs.input.length; i++) {
            arr.push(parseInt(inputs.input[i]));
        }
        return arr;
        }
label: b
arguments:
  - position: 0
    prefix: ''
    valueFrom: '"Hi"'
requirements:
  - class: DockerRequirement
    dockerPull: alpine
  - class: InlineJavascriptRequirement
