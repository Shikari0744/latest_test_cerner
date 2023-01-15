namespace: Operation
flow:
  name: Flow1_OP1
  workflow:
    - random_number_generator:
        do:
          io.cloudslang.base.math.random_number_generator:
            - min: '1'
            - max: '100'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: return_string
    - return_string:
        do:
          Operation.Sub_Operations.return_string: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      random_number_generator:
        x: 160
        'y': 200
        navigate:
          a5d44301-3c19-b61e-a376-fea646db7473:
            targetId: e1b03c25-1722-3616-a0e7-314e72b0ba06
            port: SUCCESS
      return_string:
        x: 360
        'y': 200
        navigate:
          9b5a773d-279e-f063-ee05-9f991d1f3cd4:
            targetId: e1b03c25-1722-3616-a0e7-314e72b0ba06
            port: SUCCESS
    results:
      SUCCESS:
        e1b03c25-1722-3616-a0e7-314e72b0ba06:
          x: 280
          'y': 40
