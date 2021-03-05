module LastViewer.LoadTree where

import LastViewer.ScanConfig (ScanConfig)

import Prim
import Data.Maybe

data OBJ_TYPES = Foot | Insole | Last | FootPair

parsable_filetypes :: Array String
parsable_filetypes = ["OBJ", "STL", "INVALID"]
 
type LoadRec = {
  name :: String,
  path :: String,
  ftype :: OBJ_TYPES,
  config :: Maybe ScanConfig
}

--TODO hashable typeclass interface or something
--TODO scenegraph
newtype LoadRTree = RoseTree LoadRec