plan keycopy(
  TargetSpec $nodes = "localhost",
  String $key = "~/.ssh/id_rsa.pub",
  String $user,
  String $pass,
  String $dest,
) {
  $servers = split($dest, '[,]')

  $servers.each |$server| {
    run_task('keycopy', $nodes, key => $key, user => $user, pass => $pass, dest => $server)
  }
}
