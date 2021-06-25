module A where

import qualified Language.Haskell.TH.Quote as QQ
import qualified Language.Haskell.TH.Syntax as Hs

import PQ ()

a :: QQ.QuasiQuoter
a = QQ.QuasiQuoter
  { QQ.quoteDec = undefined
  , QQ.quoteExp = pure . Hs.LitE . Hs.StringL
  , QQ.quotePat = undefined
  , QQ.quoteType = undefined
  }
