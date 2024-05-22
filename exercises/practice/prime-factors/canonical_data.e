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
 {`exercise`, `prime-factors`},
 {`cases`,
  {-2,
   {-1, {`uuid`, `924fc966-a8f5-4288-82f2-6b9224819ccd`},
    {`description`, `no factors`}, {`property`, `factors`},
    {`input`, {-1, {`value`, 1}}}, {`expected`, {-2}}},
   {-1, {`uuid`, `17e30670-b105-4305-af53-ddde182cb6ad`},
    {`description`, `prime number`}, {`property`, `factors`},
    {`input`, {-1, {`value`, 2}}}, {`expected`, {-2,2}}},
   {-1, {`uuid`, `238d57c8-4c12-42ef-af34-ae4929f94789`},
    {`description`, `another prime number`}, {`property`, `factors`},
    {`input`, {-1, {`value`, 3}}}, {`expected`, {-2,3}}},
   {-1, {`uuid`, `f59b8350-a180-495a-8fb1-1712fbee1158`},
    {`description`, `square of a prime`}, {`property`, `factors`},
    {`input`, {-1, {`value`, 9}}}, {`expected`, {-2,3,3}}},
   {-1, {`uuid`, `756949d3-3158-4e3d-91f2-c4f9f043ee70`},
    {`description`, `product of first prime`}, {`property`, `factors`},
    {`input`, {-1, {`value`, 4}}}, {`expected`, {-2,2,2}}},
   {-1, {`uuid`, `bc8c113f-9580-4516-8669-c5fc29512ceb`},
    {`description`, `cube of a prime`}, {`property`, `factors`},
    {`input`, {-1, {`value`, 8}}}, {`expected`, {-2,2,2,2}}},
   {-1, {`uuid`, `7d6a3300-a4cb-4065-bd33-0ced1de6cb44`},
    {`description`, `product of second prime`}, {`property`, `factors`},
    {`input`, {-1, {`value`, 27}}}, {`expected`, {-2,3,3,3}}},
   {-1, {`uuid`, `073ac0b2-c915-4362-929d-fc45f7b9a9e4`},
    {`description`, `product of third prime`}, {`property`, `factors`},
    {`input`, {-1, {`value`, 625}}}, {`expected`, {-2,5,5,5,5}}},
   {-1, {`uuid`, `6e0e4912-7fb6-47f3-a9ad-dbcd79340c75`},
    {`description`, `product of first and second prime`},
    {`property`, `factors`}, {`input`, {-1, {`value`, 6}}},
    {`expected`, {-2,2,3}}},
   {-1, {`uuid`, `00485cd3-a3fe-4fbe-a64a-a4308fc1f870`},
    {`description`, `product of primes and non-primes`},
    {`property`, `factors`}, {`input`, {-1, {`value`, 12}}},
    {`expected`, {-2,2,2,3}}},
   {-1, {`uuid`, `02251d54-3ca1-4a9b-85e1-b38f4b0ccb91`},
    {`description`, `product of primes`}, {`property`, `factors`},
    {`input`, {-1, {`value`, 901255}}}, {`expected`, {-2,5,17,23,461}}},
   {-1, {`uuid`, `070cf8dc-e202-4285-aa37-8d775c9cd473`},
    {`description`, `factors include a large prime`},
    {`property`, `factors`}, {`input`, {-1, {`value`, 9.381901255e+10}}},
    {`expected`, {-2,11,9539,894119}}}}}}
}
--</do not edit>

