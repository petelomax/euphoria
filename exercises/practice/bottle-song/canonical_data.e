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
 {`exercise`, `bottle-song`},
 {`cases`,
  {-2,
   {-1, {`description`, `verse`},
    {`cases`,
     {-2,
      {-1, {`description`, `single verse`},
       {`cases`,
        {-2,
         {-1, {`uuid`, `d4ccf8fc-01dc-48c0-a201-4fbeb30f2d03`},
          {`description`, `first generic verse`}, {`property`, `recite`},
          {`input`, {-1, {`startBottles`, 10}, {`takeDown`, 1}}},
          {`expected`,
           {-2, `Ten green bottles hanging on the wall,`,
            `Ten green bottles hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be nine green bottles hanging on the wall.`}}},
         {-1, {`uuid`, `0f0aded3-472a-4c64-b842-18d4f1f5f030`},
          {`description`, `last generic verse`}, {`property`, `recite`},
          {`input`, {-1, {`startBottles`, 3}, {`takeDown`, 1}}},
          {`expected`,
           {-2, `Three green bottles hanging on the wall,`,
            `Three green bottles hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be two green bottles hanging on the wall.`}}},
         {-1, {`uuid`, `f61f3c97-131f-459e-b40a-7428f3ed99d9`},
          {`description`, `verse with 2 bottles`}, {`property`, `recite`},
          {`input`, {-1, {`startBottles`, 2}, {`takeDown`, 1}}},
          {`expected`,
           {-2, `Two green bottles hanging on the wall,`,
            `Two green bottles hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be one green bottle hanging on the wall.`}}},
         {-1, {`uuid`, `05eadba9-5dbd-401e-a7e8-d17cc9baa8e0`},
          {`description`, `verse with 1 bottle`}, {`property`, `recite`},
          {`input`, {-1, {`startBottles`, 1}, {`takeDown`, 1}}},
          {`expected`,
           {-2, `One green bottle hanging on the wall,`,
            `One green bottle hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be no green bottles hanging on the wall.`}}}}}}}}},
   {-1, {`description`, `lyrics`},
    {`cases`,
     {-2,
      {-1, {`description`, `multiple verses`},
       {`cases`,
        {-2,
         {-1, {`uuid`, `a4a28170-83d6-4dc1-bd8b-319b6abb6a80`},
          {`description`, `first two verses`}, {`property`, `recite`},
          {`input`, {-1, {`startBottles`, 10}, {`takeDown`, 2}}},
          {`expected`,
           {-2, `Ten green bottles hanging on the wall,`,
            `Ten green bottles hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be nine green bottles hanging on the wall.`, ``,
            `Nine green bottles hanging on the wall,`,
            `Nine green bottles hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be eight green bottles hanging on the wall.`}}},
         {-1, {`uuid`, `3185d438-c5ac-4ce6-bcd3-02c9ff1ed8db`},
          {`description`, `last three verses`}, {`property`, `recite`},
          {`input`, {-1, {`startBottles`, 3}, {`takeDown`, 3}}},
          {`expected`,
           {-2, `Three green bottles hanging on the wall,`,
            `Three green bottles hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be two green bottles hanging on the wall.`, ``,
            `Two green bottles hanging on the wall,`,
            `Two green bottles hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be one green bottle hanging on the wall.`, ``,
            `One green bottle hanging on the wall,`,
            `One green bottle hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be no green bottles hanging on the wall.`}}},
         {-1, {`uuid`, `28c1584a-0e51-4b65-9ae2-fbc0bf4bbb28`},
          {`description`, `all verses`}, {`property`, `recite`},
          {`input`, {-1, {`startBottles`, 10}, {`takeDown`, 10}}},
          {`expected`,
           {-2, `Ten green bottles hanging on the wall,`,
            `Ten green bottles hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be nine green bottles hanging on the wall.`, ``,
            `Nine green bottles hanging on the wall,`,
            `Nine green bottles hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be eight green bottles hanging on the wall.`, ``,
            `Eight green bottles hanging on the wall,`,
            `Eight green bottles hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be seven green bottles hanging on the wall.`, ``,
            `Seven green bottles hanging on the wall,`,
            `Seven green bottles hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be six green bottles hanging on the wall.`, ``,
            `Six green bottles hanging on the wall,`,
            `Six green bottles hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be five green bottles hanging on the wall.`, ``,
            `Five green bottles hanging on the wall,`,
            `Five green bottles hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be four green bottles hanging on the wall.`, ``,
            `Four green bottles hanging on the wall,`,
            `Four green bottles hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be three green bottles hanging on the wall.`, ``,
            `Three green bottles hanging on the wall,`,
            `Three green bottles hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be two green bottles hanging on the wall.`, ``,
            `Two green bottles hanging on the wall,`,
            `Two green bottles hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be one green bottle hanging on the wall.`, ``,
            `One green bottle hanging on the wall,`,
            `One green bottle hanging on the wall,`,
            `And if one green bottle should accidentally fall,`,
            `There'll be no green bottles hanging on the wall.`}}}}}}}}}}}}
}
--</do not edit>

