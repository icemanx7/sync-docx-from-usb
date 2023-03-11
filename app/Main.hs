module Main where

import Control.Monad
import Data.Maybe (listToMaybe)
import Lib
import System.Directory
import System.FilePath.Windows

basePath :: String
basePath = "."

destFolder :: FilePath
destFolder = "MyDocs"

destination :: IO FilePath
destination = do
  home <- getHomeDirectory
  let newDest = home </> destFolder
  return newDest

makeDest :: IO [FilePath]
makeDest = do
  files <- filterLists
  dest <- destination
  let news = map (dest </>) files
  return news

filePaths :: IO [FilePath]
filePaths = listDirectory basePath

getAllFileExt :: [FilePath] -> [FilePath]
getAllFileExt = filter (\x -> takeExtension x == ".docx")

filterLists :: IO [FilePath]
filterLists = do
  f <- filePaths
  let fil = getAllFileExt f
  return fil

copyFiles :: IO ()
copyFiles = do
  orig <- filterLists
  dest <- makeDest
  res <- zipWithM copyFile orig dest
  let f = listToMaybe res
  ( case f of
      Just val -> putStrLn "worked"
      Nothing -> putStrLn "broken"
    )

main :: IO ()
main = copyFiles
