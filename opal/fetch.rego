package opal.fetch


default allow = false

allow {
    input.request.scopes[_] = "opal/fetch"
}