#!/bin/bash
ask() {
  if [ ! "$MAC_SETUP_QUESTIONS" = "ask" ]; then
    [ "$MAC_SETUP_QUESTIONS" = "yes" ]
    return
  fi
  echo -en "$1" >/dev/tty
  read -r answer
  [ "$answer" != "${answer#[Yy]}" ]
}