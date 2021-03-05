module LastViewer.ScanConfig where

import Data.Maybe (Maybe)

type V3F = {
    x :: Number,
    y :: Number,
    z :: Number
}

type ScanConfig = {
    rotation :: Maybe V3F,
    position :: Maybe V3F,
    material_color :: Maybe Int
}