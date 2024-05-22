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
 {`exercise`, `pascals-triangle`},
 {`comments`,
  {-2, `Expectations are represented here as an array of arrays.`,
   `How you represent this idiomatically in your language is up to you.`}},
 {`cases`,
  {-2,
   {-1, {`uuid`, `9920ce55-9629-46d5-85d6-4201f4a4234d`},
    {`description`, `zero rows`}, {`property`, `rows`},
    {`input`, {-1, {`count`, 0}}}, {`expected`, {-2}}},
   {-1, {`uuid`, `70d643ce-a46d-4e93-af58-12d88dd01f21`},
    {`description`, `single row`}, {`property`, `rows`},
    {`input`, {-1, {`count`, 1}}}, {`expected`, {-2, {-2,1}}}},
   {-1, {`uuid`, `a6e5a2a2-fc9a-4b47-9f4f-ed9ad9fbe4bd`},
    {`description`, `two rows`}, {`property`, `rows`},
    {`input`, {-1, {`count`, 2}}}, {`expected`, {-2, {-2,1}, {-2,1,1}}}},
   {-1, {`uuid`, `97206a99-79ba-4b04-b1c5-3c0fa1e16925`},
    {`description`, `three rows`}, {`property`, `rows`},
    {`input`, {-1, {`count`, 3}}},
    {`expected`, {-2, {-2,1}, {-2,1,1}, {-2,1,2,1}}}},
   {-1, {`uuid`, `565a0431-c797-417c-a2c8-2935e01ce306`},
    {`description`, `four rows`}, {`property`, `rows`},
    {`input`, {-1, {`count`, 4}}},
    {`expected`, {-2, {-2,1}, {-2,1,1}, {-2,1,2,1}, {-2,1,3,3,1}}}},
   {-1, {`uuid`, `06f9ea50-9f51-4eb2-b9a9-c00975686c27`},
    {`description`, `five rows`}, {`property`, `rows`},
    {`input`, {-1, {`count`, 5}}},
    {`expected`,
     {-2, {-2,1}, {-2,1,1}, {-2,1,2,1}, {-2,1,3,3,1}, {-2,1,4,6,4,1}}}},
   {-1, {`uuid`, `c3912965-ddb4-46a9-848e-3363e6b00b13`},
    {`description`, `six rows`}, {`property`, `rows`},
    {`input`, {-1, {`count`, 6}}},
    {`expected`,
     {-2, {-2,1}, {-2,1,1}, {-2,1,2,1}, {-2,1,3,3,1}, {-2,1,4,6,4,1},
      {-2,1,5,10,10,5,1}}}},
   {-1, {`uuid`, `6cb26c66-7b57-4161-962c-81ec8c99f16b`},
    {`description`, `ten rows`}, {`property`, `rows`},
    {`input`, {-1, {`count`, 10}}},
    {`expected`,
     {-2, {-2,1}, {-2,1,1}, {-2,1,2,1}, {-2,1,3,3,1}, {-2,1,4,6,4,1},
      {-2,1,5,10,10,5,1}, {-2,1,6,15,20,15,6,1}, {-2,1,7,21,35,35,21,7,1},
      {-2,1,8,28,56,70,56,28,8,1}, {-2,1,9,36,84,126,126,84,36,9,1}}}}}}}
}
--</do not edit>

