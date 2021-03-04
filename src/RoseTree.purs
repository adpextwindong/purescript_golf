module RoseTree where

import Data.Show (class Show, show)
import Data.Functor (class Functor, map)
import Data.Semigroup ((<>))

newtype RoseTree a = RoseTree
 { node :: a
 , children :: Array a
 }

instance showRTree :: (Show a) => Show (RoseTree a) where
  show (RoseTree t) = "Node: " <> show t.node <> " " <> show t.children

instance rtreefmap :: Functor RoseTree where
  map f (RoseTree t)  = RoseTree {
    node: f t.node
    , children: map f t.children
  }
