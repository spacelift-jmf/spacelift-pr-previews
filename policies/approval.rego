package spacelift

approve {
  input.run.state == "QUEUED"
}

approve {
  count(input.reviews.current.approvals) > 0
}

sample := true
