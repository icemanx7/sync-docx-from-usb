# Sync Docx files from USB to a folder in your PC

## Introduction

With this app you don't have to manually copy over your .docx documents from your usb or external Hard Drive. It automates the process for you nicely so that you can focus on just writing reports or what have you. 

## Haskell

I choose Haskell because I love the language and because it compiles down into a simple executable. So it allows to run without an interpreter like python or the Java Virtual Machine like Scala, Java or Clojure. 

## Usage

1. Clone this repo ``` git clone https://github.com/icemanx7/sync-docx-from-usb.git```
2. If on windows
   * Make sure you have stack install
   * run ```stack setup```
   * run ```stack build```
   * run ```SyncDoc.exe```
3. If on linux 
   * Make you have Nix install
   * run ```nix-build```
   * run ```SyncDoc.exe```
4. You can run the executable from a usb or any directory on your pc. 

## Changing the target Director

You can change the target directory by navigating into the app directory and opening the main.hs file. Then change destination folder to your desired folder.

## TO-DOS

* Pass the destination folder as a  command line argument
* Recursively search directories for occurrences of Docx files.
* Test to see on which OS it runs and adapts accordingly
* Pass any extension or a list of extensions to look for in the desired directory. 



