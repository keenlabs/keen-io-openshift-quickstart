def get_client
  ### Set these to your Keen IO credentials ###
  config = {
    project_id: 'YOUR_PROJECT_ID',
    write_key: 'YOUR_WRITE_KEY',
    read_key: 'YOUR_READ_KEY'
  }
  Keen.project_id = config[:project_id]
  Keen.write_key = config[:write_key]
  Keen.read_key = config[:read_key]
end
