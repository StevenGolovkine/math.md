#!/bin/bash

repeat="Y"
while [[ "$repeat" == "Y" ]]; do
  source $WIKI_DIR/.scripts/stats.sh -u
  source $WIKI_DIR/.scripts/stats.sh -p
  echo ""

  echo -e "${CYAN}Actions:${NC}"
  echo -e "    ${CYAN}(1): Git${NC}"
  echo -e "    ${CYAN}(2): Search${NC}"
  echo -e "    ${CYAN}(3): Restore${NC}"
  echo -e "    ${CYAN}(4): Ghost links${NC}"
  echo -e "    ${CYAN}(5): Update images${NC}"
  echo -e "    ${CYAN}(6): Publish notes${NC}"
  echo ""

  read -n 1 -ep "$(echo -e ${CYAN}"Select: [1|(1-6)]${NC} ")" action
  re='^[0-9]+$'
  if ([[ $action =~ $re ]]) && ([ "$action" -ge "1" ] && [ "$action" -le "6" ]) || [[ -z "$action" ]]; then
    if [[ -z "$action" ]]; then
      action="1"
    fi
  elif [[ "$action" == "q" ]]; then
    exit
  else
    clear
    $WIKI_DIR/.scripts/main.sh
    exit
  fi

  cd $WIKI_DIR/Notes

  case $action in
  "1") $DOTFILES_DIR/scripts/gitCommit.sh -r "math.md" ;;
  "2") $WIKI_DIR/.scripts/searchReplace.sh ;;
  "3") $WIKI_DIR/.scripts/gitRestore.sh ;;
  "4") $WIKI_DIR/.scripts/ghostLinks.sh ;;
  "5") $WIKI_DIR/.scripts/updateImages.sh -a -g ;;
  "6") $WIKI_DIR/.scripts/publish.sh ;;
  esac

  echo ""
  echo -e "${GREEN}DONE${NC}"
  echo ""

  read -n 1 -ep "$(echo -e ${CYAN}"Press [Y] to return, exiting otherwise...${NC} ")" repeat
  if [[ -z "$repeat" ]]; then
    repeat="Y"
  fi
  if [[ "$repeat" == "Y" ]]; then
    clear
  else
    exit
  fi
done
