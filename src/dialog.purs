module Fftdialog where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Data.Foldable
import Data.List (intercalate)
import Data.Functor ((<$>))

prologue :: Array (Array String)
prologue = [["Sword in hand, a warrior clutches stone to breast",
                "In sword etched he his fading memories",
                "In stone, his tempered skill",
                "By sword attested, by stone revealed",
                "Their tale can now be told."],
            ["I am Arazlam, student of Ivalice's Middle Age. You are familiar with the War of the Lions, no?"],
            ["It was a bitter war of succession that rent the land of Ivalice in two. Here we first find mention of Delita Heiral, a hithertofore unknown young man, the hero who would draw the curtain of this dark act of our history."]]

seperator = "----"

actsPrologue = log <$> intercalate [seperator] prologue

runPrologue :: Effect Unit
runPrologue = sequence_ actsPrologue
