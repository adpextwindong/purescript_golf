module LastViewer.LoadTree where
  
import Prim

data OBJ_TYPES = Foot | Insole | Last | FootPair

parsable_filetypes :: Array String
parsable_filetypes = ["OBJ", "STL", "INVALID"]
 
type LoadRec = {
  name :: String,
  path :: String,
  ftype :: OBJ_TYPES
}

newtype LoadRTree = RoseTree LoadRec