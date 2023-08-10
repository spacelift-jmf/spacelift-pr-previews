package spacelift

approve {
  count(input.reviews.current.approvals) > 0
}

sample := true
