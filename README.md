Task 5: Find lines in YourFirstName3.txt that start with "The/the" and end with a period.

```bash
grep -i "^the.\*\.$" ~/YourFirstName3.txt
```

Task 6: Find lines with words containing exactly one vowel (case-insensitive).

bash

```bash
grep -i '\b[^aeiou]_[aeiou][^aeiou]_\b' ~/YourFirstName3.txt
```

Task 7: Find lines with words containing 'b' not followed by 'e' (case-insensitive).

bash

```bash
grep -i '\bb[^e ]' ~/YourFirstName3.txt
```

Task 8: Find lines with words that start and end with a consonant, containing only vowels otherwise (case-insensitive).

bash

```bash
grep -i '\b[b-df-hj-np-tv-z][aeiou]\*[b-df-hj-np-tv-z]\b' ~/YourFirstName3.txt
```

Task 9: Find lines with words containing no vowels (case-insensitive).

bash

```bash
grep -i '\b[^aeiou\s]+\b' ~/YourFirstName3.txt
```
