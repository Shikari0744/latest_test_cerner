namespace: Operation
flow:
  name: MainFlow
  inputs:
    - flow_input_0: value 0
    - flow_input_1: value 1
  workflow:
    - Flow1_OP1:
        do:
          Operation.Flow1_OP1:
            - input_sp1: "${get_sp('Operation.OP1.sp1')}"
        navigate:
          - SUCCESS: return_string
    - return_string:
        do:
          Operation.Sub_Operations.return_string:
            - input_0: '${flow_input_0}'
            - input_1: '${flow_input_1}'
        navigate:
          - SUCCESS: flow2_OP2
    - flow2_OP2:
        do:
          Operation_2.flow2_OP2:
            - input_sp2: "${get_sp('Operation.OP2.sp2')}"
        navigate:
          - SUCCESS: success_string
    - success_string:
        do:
          Operation.Sub_Operations.success_string: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      Flow1_OP1:
        x: 320
        'y': 160
      return_string:
        x: 520
        'y': 160
      flow2_OP2:
        x: 720
        'y': 160
      success_string:
        x: 600
        'y': 320
        navigate:
          a3fce6cf-2b16-edd0-7e1d-dada35d398b3:
            targetId: ffd99add-30e2-c486-e504-74e224140916
            port: SUCCESS
    results:
      SUCCESS:
        ffd99add-30e2-c486-e504-74e224140916:
          x: 400
          'y': 320
