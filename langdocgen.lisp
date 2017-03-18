;;;; langdocgen.lisp

(in-package #:langdocgen)

(defvar *config-directory*
  (merge-pathname
   (make-pathname :directory '(:relative "bocproc"))
   (uiop:xdg-config-home))
  "Location of the directory that holds the config file.")

(defvar *config-file*
  (merge-pathname
   (make-pathname :name "config" :type "lisp")
   *config-directory*)
  "Location of the file that holds the `bocproc' config file.")

(defvar *data-file*
  (merge-pathname
   (make-pathname :name "data" :type "yaml")
   *config-directory*))
