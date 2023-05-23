package opal.fetch

import contains

default allow = false

allow {
    contains(input.scopes, "opal/fetch")
}