cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  cycloid-schizophrenia-spectrum---primary:
    run: cycloid-schizophrenia-spectrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  schizophrenia-spectrum-delusion---primary:
    run: schizophrenia-spectrum-delusion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: cycloid-schizophrenia-spectrum---primary/output
  schizophrenia-spectrum-schizophrenifrm---primary:
    run: schizophrenia-spectrum-schizophrenifrm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: schizophrenia-spectrum-delusion---primary/output
  schizophrenia-spectrum-paranoia---primary:
    run: schizophrenia-spectrum-paranoia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: schizophrenia-spectrum-schizophrenifrm---primary/output
  schizophrenia-spectrum-psychot---primary:
    run: schizophrenia-spectrum-psychot---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: schizophrenia-spectrum-paranoia---primary/output
  xrecurrent-schizophrenia-spectrum---primary:
    run: xrecurrent-schizophrenia-spectrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: schizophrenia-spectrum-psychot---primary/output
  xschizoaffective-schizophrenia-spectrum---primary:
    run: xschizoaffective-schizophrenia-spectrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: xrecurrent-schizophrenia-spectrum---primary/output
  schizophrenia-spectrum-psych---primary:
    run: schizophrenia-spectrum-psych---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: xschizoaffective-schizophrenia-spectrum---primary/output
  schizophrenia-spectrum---primary:
    run: schizophrenia-spectrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: schizophrenia-spectrum-psych---primary/output
  disintegrative-schizophrenia-spectrum---primary:
    run: disintegrative-schizophrenia-spectrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: schizophrenia-spectrum---primary/output
  schizophrenia-spectrum-xinduced---primary:
    run: schizophrenia-spectrum-xinduced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: disintegrative-schizophrenia-spectrum---primary/output
  persistent-schizophrenia-spectrum---primary:
    run: persistent-schizophrenia-spectrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: schizophrenia-spectrum-xinduced---primary/output
  schizophrenia-spectrum-dhallucination---primary:
    run: schizophrenia-spectrum-dhallucination---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: persistent-schizophrenia-spectrum---primary/output
  schizophrenia-spectrum-paraphrenia---primary:
    run: schizophrenia-spectrum-paraphrenia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: schizophrenia-spectrum-dhallucination---primary/output
  schizophrenia-spectrum-childhood---primary:
    run: schizophrenia-spectrum-childhood---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: schizophrenia-spectrum-paraphrenia---primary/output
  schizophrenia-spectrum-persecution---primary:
    run: schizophrenia-spectrum-persecution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: schizophrenia-spectrum-childhood---primary/output
  psychogenic-schizophrenia-spectrum---primary:
    run: psychogenic-schizophrenia-spectrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: schizophrenia-spectrum-persecution---primary/output
  schizophrenia-spectrum-state---primary:
    run: schizophrenia-spectrum-state---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: psychogenic-schizophrenia-spectrum---primary/output
  reactive-schizophrenia-spectrum---primary:
    run: reactive-schizophrenia-spectrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: schizophrenia-spectrum-state---primary/output
  catatonic-schizophrenia-spectrum---primary:
    run: catatonic-schizophrenia-spectrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: reactive-schizophrenia-spectrum---primary/output
  schizophrenia-spectrum-xsingle---primary:
    run: schizophrenia-spectrum-xsingle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: catatonic-schizophrenia-spectrum---primary/output
  schizophrenia-spectrum-capgras---primary:
    run: schizophrenia-spectrum-capgras---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: schizophrenia-spectrum-xsingle---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: schizophrenia-spectrum-capgras---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
