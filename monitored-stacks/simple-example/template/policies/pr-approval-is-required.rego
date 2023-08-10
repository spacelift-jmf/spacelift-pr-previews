package spacelift

approve {
  input.run.state != "UNCONFIRMED"
}

approve {
  count(input.reviews.current.approvals) > 0
}
