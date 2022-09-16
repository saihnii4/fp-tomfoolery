module Main
  ( factorial
  , geometry
  , main
  , shape
  )
  where

import Prelude

import Data.Int as Data.Int
import Data.Maybe (Maybe(..))
import Data.Number (sqrt)
import Effect (Effect)
import Effect.Console (log)
import Shapes (findArea)
import Shapes as Shapes
import Web.DOM (Element)
import Web.DOM.Element (toNode)
import Web.DOM.Node (textContent)
import Web.DOM.ParentNode (QuerySelector(..), querySelector)
import Web.HTML (window)
import Web.HTML.HTMLDocument (HTMLDocument, toParentNode)
import Web.HTML.Window (document)

factorial :: Int -> Int
factorial 0 = 1
factorial 1 = 1
factorial n = n * (factorial (n-1))

shape :: Shapes.Shape
shape = Shapes.Triangle 1.0 1.0 (Data.Int.toNumber(1.0/sqrt(2.0)))

geometry :: Effect Unit
geometry = case findArea shape of
  Nothing -> log "Area is indeterminate"
  Just a -> (log <<< show) a

rootSelector :: QuerySelector
rootSelector = QuerySelector ("#root")

selectFromDocument :: HTMLDocument -> Effect (Maybe Element)
selectFromDocument doc = querySelector rootSelector (toParentNode doc)

extractText :: Maybe Element -> Effect String
extractText (Just x) = (textContent <<< toNode) x
extractText _ = pure ""

main :: Effect Unit
main = window >>= document >>= selectFromDocument >>= extractText >>= log
