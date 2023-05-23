package opal.fetch

import common.contains

default allow = false

allow {
    contains(input.scopes, "opal/fetch")
}