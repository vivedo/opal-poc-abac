package opal.fetch

import data.common

default allow = false

allow {
    # input.request.scopes[_] = "opal/fetch"

    contains(input.request.scopes, "opal/fetch")
}