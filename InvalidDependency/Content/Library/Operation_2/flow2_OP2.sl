namespace: Operation_2
flow:
  name: flow2_OP2
  workflow:
    - random_number_generator:
        do:
          io.cloudslang.base.math.random_number_generator:
            - min: '1'
            - max: '100'
        navigate:
          - SUCCESS: success_string
          - FAILURE: return_string
    - return_string:
        do:
          Operation.Sub_Operations.return_string: []
        navigate:
          - SUCCESS: SUCCESS
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
      random_number_generator:
        x: 205.16665649414062
        'y': 197.75
      return_string:
        x: 440
        'y': 200
        navigate:
          dbaa2c84-f950-734c-40b7-346167d14423:
            targetId: 94ec876d-ea2c-7a49-262e-2f29be3e0054
            port: SUCCESS
      success_string:
        x: 320
        'y': 80
        navigate:
          3ef5cf63-d7ec-eaee-a90b-32a0668c8115:
            targetId: 94ec876d-ea2c-7a49-262e-2f29be3e0054
            port: SUCCESS
    results:
      SUCCESS:
        94ec876d-ea2c-7a49-262e-2f29be3e0054:
          x: 560
          'y': 80
