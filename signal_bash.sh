ps | grep bash | grep -v 'grep' | cut -b 1,2,3,4,5 | xargs kill