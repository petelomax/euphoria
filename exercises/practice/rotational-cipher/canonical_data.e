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
 {`exercise`, `rotational-cipher`},
 {`comments`, {-2, `The tests are a series of rotation tests: `}},
 {`cases`,
  {-2,
   {-1, {`uuid`, `74e58a38-e484-43f1-9466-877a7515e10f`},
    {`description`, `rotate a by 0, same output as input`},
    {`property`, `rotate`}, {`input`, {-1, {`text`, `a`}, {`shiftKey`, 0}}},
    {`expected`, `a`}},
   {-1, {`uuid`, `7ee352c6-e6b0-4930-b903-d09943ecb8f5`},
    {`description`, `rotate a by 1`}, {`property`, `rotate`},
    {`input`, {-1, {`text`, `a`}, {`shiftKey`, 1}}}, {`expected`, `b`}},
   {-1, {`uuid`, `edf0a733-4231-4594-a5ee-46a4009ad764`},
    {`description`, `rotate a by 26, same output as input`},
    {`property`, `rotate`},
    {`input`, {-1, {`text`, `a`}, {`shiftKey`, 26}}}, {`expected`, `a`}},
   {-1, {`uuid`, `e3e82cb9-2a5b-403f-9931-e43213879300`},
    {`description`, `rotate m by 13`}, {`property`, `rotate`},
    {`input`, {-1, {`text`, `m`}, {`shiftKey`, 13}}}, {`expected`, `z`}},
   {-1, {`uuid`, `19f9eb78-e2ad-4da4-8fe3-9291d47c1709`},
    {`description`, `rotate n by 13 with wrap around alphabet`},
    {`property`, `rotate`},
    {`input`, {-1, {`text`, `n`}, {`shiftKey`, 13}}}, {`expected`, `a`}},
   {-1, {`uuid`, `a116aef4-225b-4da9-884f-e8023ca6408a`},
    {`description`, `rotate capital letters`}, {`property`, `rotate`},
    {`input`, {-1, {`text`, `OMG`}, {`shiftKey`, 5}}}, {`expected`, `TRL`}},
   {-1, {`uuid`, `71b541bb-819c-4dc6-a9c3-132ef9bb737b`},
    {`description`, `rotate spaces`}, {`property`, `rotate`},
    {`input`, {-1, {`text`, `O M G`}, {`shiftKey`, 5}}},
    {`expected`, `T R L`}},
   {-1, {`uuid`, `ef32601d-e9ef-4b29-b2b5-8971392282e6`},
    {`description`, `rotate numbers`}, {`property`, `rotate`},
    {`input`, {-1, {`text`, `Testing 1 2 3 testing`}, {`shiftKey`, 4}}},
    {`expected`, `Xiwxmrk 1 2 3 xiwxmrk`}},
   {-1, {`uuid`, `32dd74f6-db2b-41a6-b02c-82eb4f93e549`},
    {`description`, `rotate punctuation`}, {`property`, `rotate`},
    {`input`, {-1, {`text`, `Let's eat, Grandma!`}, {`shiftKey`, 21}}},
    {`expected`, `Gzo'n zvo, Bmviyhv!`}},
   {-1, {`uuid`, `9fb93fe6-42b0-46e6-9ec1-0bf0a062d8c9`},
    {`description`, `rotate all letters`}, {`property`, `rotate`},
    {`input`,
     {-1, {`text`, `The quick brown fox jumps over the lazy dog.`},
      {`shiftKey`, 13}}},
    {`expected`, `Gur dhvpx oebja sbk whzcf bire gur ynml qbt.`}}}}}
}
--</do not edit>

