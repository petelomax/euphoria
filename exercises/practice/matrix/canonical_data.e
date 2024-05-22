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
 {`exercise`, `matrix`},
 {`cases`,
  {-2,
   {-1, {`uuid`, `ca733dab-9d85-4065-9ef6-a880a951dafd`},
    {`description`, `extract row from one number matrix`},
    {`property`, `row`}, {`input`, {-1, {`string`, `1`}, {`index`, 1}}},
    {`expected`, {-2,1}}},
   {-1, {`uuid`, `5c93ec93-80e1-4268-9fc2-63bc7d23385c`},
    {`description`, `can extract row`}, {`property`, `row`},
    {`input`, {-1, {`string`, "1 2\n3 4"}, {`index`, 2}}},
    {`expected`, {-2,3,4}}},
   {-1, {`uuid`, `2f1aad89-ad0f-4bd2-9919-99a8bff0305a`},
    {`description`, `extract row where numbers have different widths`},
    {`property`, `row`},
    {`input`, {-1, {`string`, "1 2\n10 20"}, {`index`, 2}}},
    {`expected`, {-2,10,20}}},
   {-1, {`uuid`, `68f7f6ba-57e2-4e87-82d0-ad09889b5204`},
    {`description`,
     `can extract row from non-square matrix with no corresponding column`},
    {`property`, `row`},
    {`input`, {-1, {`string`, "1 2 3\n4 5 6\n7 8 9\n8 7 6"}, {`index`, 4}}},
    {`expected`, {-2,8,7,6}}},
   {-1, {`uuid`, `e8c74391-c93b-4aed-8bfe-f3c9beb89ebb`},
    {`description`, `extract column from one number matrix`},
    {`property`, `column`}, {`input`, {-1, {`string`, `1`}, {`index`, 1}}},
    {`expected`, {-2,1}}},
   {-1, {`uuid`, `7136bdbd-b3dc-48c4-a10c-8230976d3727`},
    {`description`, `can extract column`}, {`property`, `column`},
    {`input`, {-1, {`string`, "1 2 3\n4 5 6\n7 8 9"}, {`index`, 3}}},
    {`expected`, {-2,3,6,9}}},
   {-1, {`uuid`, `ad64f8d7-bba6-4182-8adf-0c14de3d0eca`},
    {`description`,
     `can extract column from non-square matrix with no corresponding row`},
    {`property`, `column`},
    {`input`, {-1, {`string`, "1 2 3 4\n5 6 7 8\n9 8 7 6"}, {`index`, 4}}},
    {`expected`, {-2,4,8,6}}},
   {-1, {`uuid`, `9eddfa5c-8474-440e-ae0a-f018c2a0dd89`},
    {`description`, `extract column where numbers have different widths`},
    {`property`, `column`},
    {`input`, {-1, {`string`, "89 1903 3\n18 3 1\n9 4 800"}, {`index`, 2}}},
    {`expected`, {-2,1903,3,4}}}}}}
}
--</do not edit>

