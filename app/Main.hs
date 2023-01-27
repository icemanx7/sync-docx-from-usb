module Main where

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
  let news = map (\(x) -> dest </> x) files
  return news

filePaths :: IO [FilePath]
filePaths = listDirectory basePath

getAllFileExt :: [FilePath] -> [FilePath]
getAllFileExt filesInDir =
  filter (\x -> (takeExtension x) == ".docx") filesInDir

filterLists :: IO [FilePath]
filterLists = do
  f <- filePaths
  let fil = getAllFileExt f
  return fil

copyFiles :: IO [()]
copyFiles = do
  orig <- filterLists
  dest <- makeDest
  mapM (\(x, y) -> copyFile x y) $ zip orig dest

main = copyFiles
