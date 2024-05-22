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
 {`exercise`, `series`},
 {`cases`,
  {-2,
   {-1, {`uuid`, `7ae7a46a-d992-4c2a-9c15-a112d125ebad`},
    {`description`, `slices of one from one`}, {`property`, `slices`},
    {`input`, {-1, {`series`, `1`}, {`sliceLength`, 1}}},
    {`expected`, {-2, `1`}}},
   {-1, {`uuid`, `3143b71d-f6a5-4221-aeae-619f906244d2`},
    {`description`, `slices of one from two`}, {`property`, `slices`},
    {`input`, {-1, {`series`, `12`}, {`sliceLength`, 1}}},
    {`expected`, {-2, `1`, `2`}}},
   {-1, {`uuid`, `dbb68ff5-76c5-4ccd-895a-93dbec6d5805`},
    {`description`, `slices of two`}, {`property`, `slices`},
    {`input`, {-1, {`series`, `35`}, {`sliceLength`, 2}}},
    {`expected`, {-2, `35`}}},
   {-1, {`uuid`, `19bbea47-c987-4e11-a7d1-e103442adf86`},
    {`description`, `slices of two overlap`}, {`property`, `slices`},
    {`input`, {-1, {`series`, `9142`}, {`sliceLength`, 2}}},
    {`expected`, {-2, `91`, `14`, `42`}}},
   {-1, {`uuid`, `8e17148d-ba0a-4007-a07f-d7f87015d84c`},
    {`description`, `slices can include duplicates`},
    {`property`, `slices`},
    {`input`, {-1, {`series`, `777777`}, {`sliceLength`, 3}}},
    {`expected`, {-2, `777`, `777`, `777`, `777`}}},
   {-1, {`uuid`, `bd5b085e-f612-4f81-97a8-6314258278b0`},
    {`description`, `slices of a long series`}, {`property`, `slices`},
    {`input`, {-1, {`series`, `918493904243`}, {`sliceLength`, 5}}},
    {`expected`,
     {-2, `91849`, `18493`, `84939`, `49390`, `93904`, `39042`, `90424`,
      `04243`}}},
   {-1, {`uuid`, `6d235d85-46cf-4fae-9955-14b6efef27cd`},
    {`description`, `slice length is too large`}, {`property`, `slices`},
    {`input`, {-1, {`series`, `12345`}, {`sliceLength`, 6}}},
    {`expected`,
     {-1, {`error`, `slice length cannot be greater than series length`}}}},
   {-1, {`uuid`, `d7957455-346d-4e47-8e4b-87ed1564c6d7`},
    {`description`, `slice length is way too large`},
    {`property`, `slices`},
    {`input`, {-1, {`series`, `12345`}, {`sliceLength`, 42}}},
    {`expected`,
     {-1, {`error`, `slice length cannot be greater than series length`}}}},
   {-1, {`uuid`, `d34004ad-8765-4c09-8ba1-ada8ce776806`},
    {`description`, `slice length cannot be zero`}, {`property`, `slices`},
    {`input`, {-1, {`series`, `12345`}, {`sliceLength`, 0}}},
    {`expected`, {-1, {`error`, `slice length cannot be zero`}}}},
   {-1, {`uuid`, `10ab822d-8410-470a-a85d-23fbeb549e54`},
    {`description`, `slice length cannot be negative`},
    {`property`, `slices`},
    {`input`, {-1, {`series`, `123`}, {`sliceLength`, -1}}},
    {`expected`, {-1, {`error`, `slice length cannot be negative`}}}},
   {-1, {`uuid`, `c7ed0812-0e4b-4bf3-99c4-28cbbfc246a2`},
    {`description`, `empty series is invalid`}, {`property`, `slices`},
    {`input`, {-1, {`series`, ``}, {`sliceLength`, 1}}},
    {`expected`, {-1, {`error`, `series cannot be empty`}}}}}}}
}
--</do not edit>

