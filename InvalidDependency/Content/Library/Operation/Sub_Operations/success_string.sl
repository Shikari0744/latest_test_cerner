namespace: Operation.Sub_Operations
operation:
  name: success_string
  python_action:
    use_jython: false
    script: |-
      # do not remove the execute function
      def execute():
          return "Successfull flow";
          # code goes here
      # you can add additional helper methods below.
  results:
    - SUCCESS
