;;; vex-mode.el --- sample major mode for editing LSL.

;; Copyright © 2015, by you

;; Author: your name ( your email )
;; Version: 2.0.13
;; Created: 26 Jun 2015
;; Keywords: languages
;; Homepage: http://ergoemacs.org/emacs/elisp_syntax_coloring.html

;; This file is not part of GNU Emacs.

;;; License:

;; You can redistribute this program and/or modify it under the terms of the GNU General Public License version 2.

;;; Commentary:

;; short description here

;; full doc on how to use here


;;; Code:

;; define several category of keywords
;;
;; 2020.03.06 rename to general vex-mode
;; 2015.12.27 gearslogy:write the vex-mode to the major mode
;; write the yasnippets for the auto complete...
;; now set my gearslogy-vex-mode here....

(setq vex-keywords '("break" "default" "do" "else" "for" "function" "if" "return" "switch" "while" "case" "class" "struct" "this" "void") )
(setq vex-types '("float" "int" "vector" "matrix" "matrix3" "string" "matrix4"))
(setq vex-constants '("ACTIVE" "AGENT" "ALL_SIDES" "ATTACH_BACK"))
(setq vex-events '("at_rot_target" "at_target" "attach"))
(setq vex-functions '(“abs" "abspath" "accessframe" "acos" "addattrib" "adddetailattrib" "addpoint" "addpointattrib“
                          “addprim" "addprimattrib" "addvariablename" "addvertex" "addvertexattrib" "addvisualizer“
                          “agentaddclip" "agentchannelnames" "agentchannelvalue" "agentchannelvalues“
                          “agentclipcatalog" "agentclipchannel" "agentclipchannelnames" "agentcliplength“
                          “agentclipnames" "agentclipsample" "agentclipsamplelocal" "agentclipsamplerate“
                          “agentclipsampleworld" "agentclipstarttime" "agentcliptimes" "agentcliptransformgroups“
                          “agentclipweights" "agentcollisionlayer" "agentcurrentlayer" "agentfindtransformgroup“
                          “agentlayerbindings" "agentlayers" "agentlayershapes" "agentlocaltransform“
                          “agentlocaltransforms" "agentrigchildren" "agentrigfind" "agentrigfindchannel“
                          “agentrigparent" "agentsolvefbik" "agenttransformcount" "agenttransformgroupmember“
                          “agenttransformgroupmemberchannel" "agenttransformgroups" "agenttransformgroupweight“
                          “agenttransformnames" "agenttransformtolocal" "agenttransformtoworld“
                          “agentworldtransform" "agentworldtransforms" "albedo" "alphaname" "ambient" "anoise" "append“
                          “area" "argsort" "array" "ashikhmin" "asin" "assign" "atan" "atan2" "atof" "atoi" "atten" "attrib“
                          “attribclass" "attribdataid" "attribsize" "attribtype" "attribtypeinfo" "avg" "binput“
                          “blackbody" "blinn" "bouncelabel" "bouncemask" "bumpname" "cbrt" "ceil" "ch" "ch2" "ch3" "ch4" "chadd“
                          “chattr" "chattrnames" "chend" "chendf" "chendt" "chexpr" "chexprf" "chexprt" "chf" "chi" "chid“
                          “chindex" "chinput" "chinputlimits" "chname" "chnames" "chnumchan" "chop" "choplocal" "choplocalt“
                          “chopt" "chp" "chr" "chramp" "chrampderiv" "chrate" "chreadbuf" "chremove" "chremoveattr" "chrename“
                          “chresizebuf" "chs" "chsetattr" "chsetlength" "chsetrate" "chsetstart" "chsop" "chsraw" "chstart“
                          “chstartf" "chstartt" "chu" "chv" "chwritebuf" "cinput" "ckspline" "clamp" "clip" "colormap“
                          “colorname" "combinelocaltransform" "computenormal" "concat" "cone" "cos" "cosh“
                          “cracktransform" "cregioncapturetransform" "cregiondeformtransform“
                          “cregionoverridetransform" "cross" "cspline" "ctransform" "curlnoise" "curlnoise2d“
                          “curlxnoise" "curlxnoise2d" "cwnoise" "decode" "decodeattrib" "decodeparm" "degrees" "depthmap“
                          “depthname" "detail" "detailattrib" "detailattribsize" "detailattribtype“
                          “detailattribtypeinfo" "detailintrinsic" "determinant" "diagonalizesymmetric" "diffuse“
                          “dihedral" "dimport" "distance" "distance2" "dot" "dsmpixel" "Du" "Dv" "Dw" "efit" "eigenvalues“
                          “encode" "encodeattrib" "encodeparm" "endswith" "environment" "erf" "erfc" "error“
                          “eulertoquaternion" "exp" "expandedgegroup" "expandpointgroup" "expandprimgroup“
                          “expandvertexgroup" "extractlocaltransform" "fastshadow" "filamentsample" "filtershadow“
                          “filterstep" "find" "findattribval" "findattribvalcount" "finput" "fit" "fit01" "fit10" "fit11“
                          “floor" "flownoise" "flowpnoise" "foreach" "forpoints" "frac" "fresnel" "frontface" "fuzzify“
                          “gather" "geoself" "geounwrap" "getattrib" "getattribute" "getbbox" "getbounces" "getbounds“
                          “getcomp" "getcomponents" "getderiv" "getfogname" "getglobalraylevel" "getgroupid" "getlight“
                          “getlightid" "getlightname" "getlights" "getlightscope" "getlocalcurvature" "getmaterial“
                          “getmaterialid" "getobjectid" "getobjectname" "getpackedtransform" "getphotonlight“
                          “getpointbbox" "getprimid" "getptextureid" "getraylevel" "getrayweight" "getsamplestore“
                          “getscope" "getspace" "getuvtangents" "ggx" "gradient" "hair" "hasattrib" "hasdetailattrib“
                          “haslight" "hasmetadata" "hasplane" "haspointattrib" "hasprimattrib" "hasvertexattrib“
                          “henyeygreenstein" "hsvtorgb" "iaspect" "ichname" "ident" "idtopoint" "idtoprim" "iend" "iendtime“
                          “ihasplane" "illuminance" "inedgegroup" "inpointgroup" "inprimgroup" "insert" "instance“
                          “interpolate" "intersect" "inumplanes" "invert" "invertexgroup" "iplaneindex" "iplanename“
                          “iplanesize" "irate" "irradiance" "isalpha" "isbound" "isconnected" "isdigit" "isfinite“
                          “isfogray" "isframes" "islpeactive" "isnan" "isotropic" "israytracing" "issamples" "isseconds“
                          “isshadowray" "istart" "istarttime" "isuvrendering" "isvalidindex" "isvarying" "itoa" "ixres“
                          “iyres" "join" "kspline" "len" "length" "length2" "lerp" "lightbounces" "lightid" "lightstate“
                          “limport" "lkspline" "log" "log10" "lookat" "lspline" "lstrip" "luminance" "lumname" "makebasis“
                          “maketransform" "maskname" "match" "mattrib" "max" "mdensity" "metadata" "metaimport" "metamarch“
                          “metanext" "metastart" "metaweight" "min" "minpos" "mspace" "mwnoise" "nametopoint" "nametoprim“
                          “nbouncetypes" "ndcdepth" "nearpoint" "nearpoints" "nedgesgroup" "neighbour" "neighbourcount“
                          “neighbours" "newsampler" "nextsample" "ninput" "ninputs" "noise" "noised" "normalize“
                          “normalname" "npoints" "npointsgroup" "nprimitives" "nprimitivesgroup" "nrandom" "ntransform“
                          “nuniqueval" "nvertices" "nverticesgroup" "objectstate" "occlusion" "onoise" "opdigits" "opend“
                          “opfullpath" "opid" "opparentbonetransform" "opparenttransform" "opparmtransform“
                          “oppreconstrainttransform" "oppreparmtransform" "opprerawparmtransform" "oppretransform“
                          “oprawparmtransform" "opstart" "optransform" "ord" "orthographic" "outerproduct“
                          “packedtransform" "pathtrace" "pcclose" "pccone" "pcconvex" "pcexport" "pcfarthest" "pcfilter“
                          “pcfind" "pcgenerate" "pcimport" "pcimportbyidx3" "pcimportbyidx4" "pcimportbyidxf“
                          “pcimportbyidxi" "pcimportbyidxp" "pcimportbyidxs" "pcimportbyidxv" "pciterate" "pcline“
                          “pcnumfound" "pcopen" "pcopenlod" "pcsampleleaf" "pcsegment" "pcsize" "pcunshaded" "pcwrite“
                          “perspective" "pgfind" "phong" "phonglobe" "photonmap" "planeindex" "planename“
                          “planepointdistance" "planesize" "planesphereintersect" "pluralize" "pnoise" "point“
                          “pointattrib" "pointattribsize" "pointattribtype" "pointattribtypeinfo" "pointedge“
                          “pointhedge" "pointhedgenext" "pointname" "pointprims" "pointvertex" "pointvertices“
                          “polardecomp" "polyneighbours" "pop" "pow" "premul" "prerotate" "prescale" "pretranslate" "prim“
                          “primarclen" "primattrib" "primattribsize" "primattribtype" "primattribtypeinfo" "primduv“
                          “primfind" "primhedge" "primintrinsic" "primpoint" "primpoints" "primuv" "primuvconvert“
                          “primvertex" "primvertexcount" "primvertices" "printf" "product" "ptexture" "ptlined“
                          “ptransform" "push" "pxnoised" "qconvert" "qdistance" "qinvert" "qmultiply" "qrotate" "quaternion“
                          “quaterniontoeuler" "radians" "rand" "random" "rawcolormap" "rayhittest" "rayimport" "reflect“
                          “reflectlight" "refract" "refractlight" "relativepath" "relbbox" "relpath" "relpointbbox“
                          “removeindex" "removepoint" "removeprim" "removevalue" "removevertex" "renderstate" "reorder“
                          “resize" "resolvemissedray" "reverse" "rgbtohsv" "rgbtoxyz" "rint" "rotate" "rstrip" "sampledisk“
                          “scale" "scatter" "select" "serialize" "set" "setagentchannelvalue" "setagentchannelvalues“
                          “setagentclipnames" "setagentclips" "setagentcliptimes" "setagentclipweights“
                          “setagentcollisionlayer" "setagentcurrentlayer" "setagentlocaltransform“
                          “setagentlocaltransforms" "setagentworldtransform" "setagentworldtransforms" "setattrib“
                          “setattribtypeinfo" "setcomp" "setcurrentlight" "setdetailattrib" "setdetailintrinsic“
                          “setedgegroup" "setpackedtransform" "setpointattrib" "setpointgroup" "setprimattrib“
                          “setprimgroup" "setprimintrinsic" "setprimvertex" "setsamplestore" "setvertexattrib“
                          “setvertexgroup" "setvertexpoint" "shadow" "shadowmap" "shimport" "shl" "shr" "shrz" "sign“
                          “simport" "sin" "sinh" "sleep" "slerp" "slice" "slideframe" "smooth" "smoothrotation" "snoise“
                          “solveconstraint" "solvecubic" "solvecurve" "solvefbik" "solveik" "solvepoly" "solvequadratic“
                          “sort" "specular" "spline" "split" "splitpath" "sprintf" "sqrt" "sssapprox" "startswith“
                          “storelightexport" "strip" "strlen" "sum" "surfacedist" "svddecomp" "switch" "swizzle" "tan" "tanh“
                          “teximport" "texprintf" "texture" "texture3d" "titlecase" "tolower" "toupper" "trace" "translate“
                          “translucent" "transpose" "trunc" "uniqueval" "uniquevals" "unserialize" "upush" "uvdist“
                          “uvintersect" "uvsample" "uvunwrap" "variance" "velocityname" "vertex" "vertexattrib“
                          “vertexattribsize" "vertexattribtype" "vertexattribtypeinfo" "vertexhedge" "vertexindex“
                          “vertexnext" "vertexpoint" "vertexprev" "vertexprim" "vertexprimindex" "vnoise" "volume“
                          “volumegradient" "volumeindex" "volumeindexactive" "volumeindexorigin" "volumeindextopos“
                          “volumeindexv" "volumepostoindex" "volumeres" "volumesample" "volumesamplev“
                          “volumevoxeldiameter" "vtransform" "warning" "wireblinn" "wirediffuse" "wnoise" "writepixel“
                          “xnoise" "xnoise" "xnoised" "xyzdist" "xyztorgb“))



(defvar vex-mode-hook nil)
;;put to list 
(defun my:push-c++-keys(list-names)
  (push list-names vex-keywords))

(setq vex-c-list-types c-font-lock-extra-types)
(setq vex-c-list-keywords c-font-lock-keywords) ;; do not support
(setq vex-c++-list-keywords c++-font-lock-keywords)
(setq vex-c++-list-types c++-font-lock-extra-types) ;;dot not support 



(mapcar 'my:push-c++-keys vex-c-list-types)
(mapcar 'my:push-c++-keys vex-c++-list-types)



;; generate regex string for each category of keywords
(setq vex-keywords-regexp (regexp-opt vex-keywords 'words))
(setq vex-type-regexp (regexp-opt vex-types 'words))
(setq vex-constant-regexp (regexp-opt vex-constants 'words))
(setq vex-event-regexp (regexp-opt vex-events 'words))
(setq vex-functions-regexp (regexp-opt vex-functions 'words))



;; create the list for font-lock.
;; each category of keyword is given a particular face
(setq vex-font-lock-keywords
      `(
        (,vex-type-regexp . font-lock-type-face)
        (,vex-constant-regexp . font-lock-constant-face)
        (,vex-event-regexp . font-lock-builtin-face)
        (,vex-functions-regexp . font-lock-function-name-face)
        (,vex-keywords-regexp . font-lock-keyword-face)
        
        ;; note: order above matters, because once colored, that part won't change.
        ;; in general, longer words first
        ))

;;;###autoload

(define-derived-mode vex-mode c++-mode
  "vex-mode"
  "Major mode for editing houdini vex …"
  (setq mode-name "vex-mode")
  
  ;; code for syntax highlighting
  (setq font-lock-defaults '((vex-font-lock-keywords))))

(run-hooks 'vex-mode-hook)



(setq copy_vex_temp vex-functions)
(require 'auto-complete)
(add-to-list 'ac-modes 'vex-mode)

(defun my:ac-vex-mode-init()
  (defun mysource1-candidates ()
    copy_vex_temp)
  (defvar ac-source-mysource1
    '((candidates . mysource1-candidates)))
  (setq ac-sources (append '(ac-source-mysource1) ac-sources)))
  ;(add-hook 'fundamental-mode (lambda () (add-to-list 'ac-sources 'ac-source-mysource1))))


(add-hook 'c++-mode-hook 'my:ac-vex-mode-init)

;(add-hook 'fundamental-mode 'my:ac-vex-mode-init)  


;; clear memory. no longer needed
;(setq vex-keywords nil)
(setq vex-types nil)
(setq vex-constants nil)
(setq vex-events nil)
(setq vex-functions nil)

;; clear memory. no longer needed
(setq vex-keywords-regexp nil)
(setq vex-types-regexp nil)
(setq vex-constants-regexp nil)
(setq vex-events-regexp nil)
(setq vex-functions-regexp nil)


(add-to-list 'auto-mode-alist '("\\.vex$" . vex-mode))

;; add the mode to the `features' list


(setq major-mode 'vex-mode)
(provide 'vex-mode)

;; Local Variables:
;; coding: utf-8
;; End:

;;; vex-mode.el ends here
