job "example" {
  datacenters = ["dc1"]
  type = "service"
  group "cache" {
    count = 1
    task "dl-file" {
      driver = "exec"
      config {
        command = "python"
        args = [ "-u","/tmp/date_sleep.py" ]
      }
      artifact {
        mode = "file"
        destination = "/tmp/date_sleep.py"
        source = "https://raw.githubusercontent.com/angrycub/kitchen-sink/master/date_sleep.py"

        # For private repos you need to use a GitHub personal token and HTTPS Basic Authentication
        # source = "https://«github_user»:«github_token»@raw.githubusercontent.com/angrycub/kitchen-sink/master/date_sleep.py"
      }
    }
  }
}
