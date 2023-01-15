namespace: Operation.Sub_Operations
operation:
  name: return_string
  python_action:
    use_jython: false
    script: |-
      # do not remove the execute function
      def execute():
          return "Operation - return_string as failure"
          # code goes here
      # you can add additional helper methods below.
  results:
    - SUCCESS
