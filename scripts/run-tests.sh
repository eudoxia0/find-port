#!/usr/bin/env sh

set -e

LISP=${LISP:-sbcl}

${LISP} --eval '(ql:quickload :find-port-test)' \
        --eval '(uiop:quit)'
