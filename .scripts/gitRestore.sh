#!/bin/bash

cd $WIKI_DIR

echo ""

INPUT() {
  read -n 1 -ep "$(echo -e "${PURPLE}Restore: [N(otes)/i(mages)/b(oth)]${NC}") " restoreIn
  if [[ "$restoreIn" == "q" ]]; then
    exit
  fi
}

# Notes, images, or both
INPUT
while [[ ! -z "$restoreIn" ]] && [[ ! "$restoreIn" == i ]] && [[ ! "$restoreIn" == b ]]; do
  INPUT
done

echo ""

read -n 1 -ep "$(echo -e "${RED}Are you sure? [N/y]${NC}") " proceed
if [[ ! "$proceed" == y ]]; then
  exit
fi

# Restore notes
if [[ -z "$restoreIn" ]] || [[ "$restoreIn" == "b" ]]; then
  git restore notes/*
fi

# Restore images
if [[ "$restoreIn" == "i" ]] || [[ "$restoreIn" == "b" ]]; then
  git restore images/*
fi

echo -e "    ${PURPLE}DONE${NC}"
