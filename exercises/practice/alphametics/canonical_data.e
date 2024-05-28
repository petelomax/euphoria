-- created automatically by the test generator and brutally overwritten on a regular basis.
-- To permanently mark a test as ignoring all of this copy the following into test.exw:
--<do not edit>
--ignore canonical_data.e
--</do not edit>
-- Otherwise copy/paste this lot (rather than include, so it can verify up-to-date-ness):
--  **NB** If this begins {-1,{`exercise`,`<slug_name>`, then it's still raw json, and the
--          test generator needs updating to munge it, or you can just ignore it as above.
--<do not edit>
constant canonical_data = {
{-1,
 {`exercise`, `alphametics`},
 {`cases`,
  {-2,
   {-1, {`uuid`, `e0c08b07-9028-4d5f-91e1-d178fead8e1a`},
    {`description`, `puzzle with three letters`}, {`property`, `solve`},
    {`input`, {-1, {`puzzle`, `I + BB == ILL`}}},
    {`expected`, {-1, {`I`, 1}, {`B`, 9}, {`L`, 0}}}},
   {-1, {`uuid`, `a504ee41-cb92-4ec2-9f11-c37e95ab3f25`},
    {`description`, `solution must have unique value for each letter`},
    {`property`, `solve`}, {`input`, {-1, {`puzzle`, `A == B`}}},
    {`expected`, {-3, `null`}}},
   {-1, {`uuid`, `4e3b81d2-be7b-4c5c-9a80-cd72bc6d465a`},
    {`description`, `leading zero solution is invalid`},
    {`property`, `solve`}, {`input`, {-1, {`puzzle`, `ACA + DD == BD`}}},
    {`expected`, {-3, `null`}}},
   {-1, {`uuid`, `8a3e3168-d1ee-4df7-94c7-b9c54845ac3a`},
    {`description`, `puzzle with two digits final carry`},
    {`property`, `solve`},
    {`input`,
     {-1,
      {`puzzle`, `A + A + A + A + A + A + A + A + A + A + A + B == BCC`}}},
    {`expected`, {-1, {`A`, 9}, {`B`, 1}, {`C`, 0}}}},
   {-1, {`uuid`, `a9630645-15bd-48b6-a61e-d85c4021cc09`},
    {`description`, `puzzle with four letters`}, {`property`, `solve`},
    {`input`, {-1, {`puzzle`, `AS + A == MOM`}}},
    {`expected`, {-1, {`A`, 9}, {`S`, 2}, {`M`, 1}, {`O`, 0}}}},
   {-1, {`uuid`, `3d905a86-5a52-4e4e-bf80-8951535791bd`},
    {`description`, `puzzle with six letters`}, {`property`, `solve`},
    {`input`, {-1, {`puzzle`, `NO + NO + TOO == LATE`}}},
    {`expected`,
     {-1, {`N`, 7}, {`O`, 4}, {`T`, 9}, {`L`, 1}, {`A`, 0}, {`E`, 2}}}},
   {-1, {`uuid`, `4febca56-e7b7-4789-97b9-530d09ba95f0`},
    {`description`, `puzzle with seven letters`}, {`property`, `solve`},
    {`input`, {-1, {`puzzle`, `HE + SEES + THE == LIGHT`}}},
    {`expected`,
     {-1, {`E`, 4}, {`G`, 2}, {`H`, 5}, {`I`, 0}, {`L`, 1}, {`S`, 9},
      {`T`, 7}}}},
   {-1, {`uuid`, `12125a75-7284-4f9a-a5fa-191471e0d44f`},
    {`description`, `puzzle with eight letters`}, {`property`, `solve`},
    {`input`, {-1, {`puzzle`, `SEND + MORE == MONEY`}}},
    {`expected`,
     {-1, {`S`, 9}, {`E`, 5}, {`N`, 6}, {`D`, 7}, {`M`, 1}, {`O`, 0},
      {`R`, 8}, {`Y`, 2}}}},
   {-1, {`uuid`, `fb05955f-38dc-477a-a0b6-5ef78969fffa`},
    {`description`, `puzzle with ten letters`}, {`property`, `solve`},
    {`input`,
     {-1,
      {`puzzle`, `AND + A + STRONG + OFFENSE + AS + A + GOOD == DEFENSE`}}},
    {`expected`,
     {-1, {`A`, 5}, {`D`, 3}, {`E`, 4}, {`F`, 7}, {`G`, 8}, {`N`, 0},
      {`O`, 2}, {`R`, 1}, {`S`, 6}, {`T`, 9}}}},
   {-1, {`uuid`, `9a101e81-9216-472b-b458-b513a7adacf7`},
    {`description`, `puzzle with ten letters and 199 addends`},
    {`property`, `solve`},
    {`input`,
     {-1,
      {`puzzle`,
       `THIS + A + FIRE + THEREFORE + FOR + ALL + HISTORIES + I + TELL + A + TALE + THAT + FALSIFIES + ITS + TITLE + TIS + A + LIE + THE + TALE + OF + THE + LAST + FIRE + HORSES + LATE + AFTER + THE + FIRST + FATHERS + FORESEE + THE + HORRORS + THE + LAST + FREE + TROLL + TERRIFIES + THE + HORSES + OF + FIRE + THE + TROLL + RESTS + AT + THE + HOLE + OF + LOSSES + IT + IS + THERE + THAT + SHE + STORES + ROLES + OF + LEATHERS + AFTER + SHE + SATISFIES + HER + HATE + OFF + THOSE + FEARS + A + TASTE + RISES + AS + SHE + HEARS + THE + LEAST + FAR + HORSE + THOSE + FAST + HORSES + THAT + FIRST + HEAR + THE + TROLL + FLEE + OFF + TO + THE + FOREST + THE + HORSES + THAT + ALERTS + RAISE + THE + STARES + OF + THE + OTHERS + AS + THE + TROLL + ASSAILS + AT + THE + TOTAL + SHIFT + HER + TEETH + TEAR + HOOF + OFF + TORSO + AS + THE + LAST + HORSE + FORFEITS + ITS + LIFE + THE + FIRST + FATHERS + HEAR + OF + THE + HORRORS + THEIR + FEARS + THAT + THE + FIRES + FOR + THEIR + FEASTS + ARREST + AS + THE + FIRST + FATHERS + RESETTLE + THE + LAST + OF + THE + FIRE + HORSES + THE + LAST + TROLL + HARASSES + THE + FOREST + HEART + FREE + AT + LAST + OF + THE + LAST + TROLL + ALL + OFFER + THEIR + FIRE + HEAT + TO + THE + ASSISTERS + FAR + OFF + THE + TROLL + FASTS + ITS + LIFE + SHORTER + AS + STARS + RISE + THE + HORSES + REST + SAFE + AFTER + ALL + SHARE + HOT + FISH + AS + THEIR + AFFILIATES + TAILOR + A + ROOFS + FOR + THEIR + SAFE == FORTRESSES`}}},
    {`expected`,
     {-1, {`A`, 1}, {`E`, 0}, {`F`, 5}, {`H`, 8}, {`I`, 7}, {`L`, 2},
      {`O`, 6}, {`R`, 3}, {`S`, 4}, {`T`, 9}}}}}}}
}
--</do not edit>
