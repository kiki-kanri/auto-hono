#!/bin/bash

name='auto-hono'

if ! tmux ls | grep -q "^$name:"; then
    tmux new-session -ds "$name"
    tmux send-keys -t "$name" 'bun run dev' C-m
fi
