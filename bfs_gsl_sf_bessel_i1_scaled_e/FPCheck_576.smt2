(declare-fun a_ack!879 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!879))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!879))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!879))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!879))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!879))
             ((_ to_fp 11 53) #x4020000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4030000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!879)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!66 ((_ to_fp 11 53)
              (ite (fp.gt ((_ to_fp 11 53) a_ack!879)
                          ((_ to_fp 11 53) #x0000000000000000))
                   #x3ff0000000000000
                   #xbff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!3)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c814b37f4b51f71))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #xbc814b37f4b51f71))))
      (a!8 (fp.abs (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #xbc814b37f4b51f71)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!5)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3cb42d169d7dfa04))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3cb42d169d7dfa04))))
      (a!12 (fp.abs (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3cb42d169d7dfa04)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven (fp.abs a!7) a!8)
                           ((_ to_fp 11 53) #x3cb7c76cf0790b3b))))
      (a!10 (fp.sub roundNearestTiesToEven
                    a!7
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #xbc814b37f4b51f71)))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) #x3cb7c76cf0790b3b)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven (fp.abs a!11) a!12)
                            ((_ to_fp 11 53) #x3ce0c0de350f7675))))
      (a!14 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3cb42d169d7dfa04)))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            a!14
                            ((_ to_fp 11 53) #xbce0c0de350f7675)))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.abs a!15)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3cb7c76cf0790b3b)))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!15
                            (fp.add roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3cb7c76cf0790b3b)))
                    ((_ to_fp 11 53) #xbcf13428ff6ed89c))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!17)))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.abs a!18)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #xbce0c0de350f7675)))))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #xbce0c0de350f7675)))
                    ((_ to_fp 11 53) #x3d0770f4d8b1819e))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3cf13428ff6ed89c)))
                    (fp.add roundNearestTiesToEven
                            a!19
                            ((_ to_fp 11 53) #x3d0770f4d8b1819e))))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!21)))
(let ((a!23 (fp.add roundNearestTiesToEven
                    a!20
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!22)
                                    (fp.abs a!17))
                            ((_ to_fp 11 53) #x3d280e0abfa04426))))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!22 a!17)
                            ((_ to_fp 11 53) #x3d280e0abfa04426)))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    a!23
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!24)
                                    (fp.abs a!21))
                            ((_ to_fp 11 53) #x3d17a7b85f3869d7))))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!24 a!21)
                            ((_ to_fp 11 53) #xbd17a7b85f3869d7)))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    (fp.abs a!26)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!22 a!17)
                                    ((_ to_fp 11 53) #x3d280e0abfa04426)))))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!26
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!22 a!17)
                                    ((_ to_fp 11 53) #x3d280e0abfa04426)))
                    ((_ to_fp 11 53) #xbd5cbc5c1a3c751e))))
(let ((a!29 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!28)))
(let ((a!30 (fp.add roundNearestTiesToEven
                    (fp.abs a!29)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!24 a!21)
                                    ((_ to_fp 11 53) #xbd17a7b85f3869d7)))))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!29
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!24 a!21)
                                    ((_ to_fp 11 53) #xbd17a7b85f3869d7)))
                    ((_ to_fp 11 53) #xbd6953d5171632e8))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!25
                            (fp.add roundNearestTiesToEven
                                    a!27
                                    ((_ to_fp 11 53) #x3d5cbc5c1a3c751e)))
                    (fp.add roundNearestTiesToEven
                            a!30
                            ((_ to_fp 11 53) #x3d6953d5171632e8))))
      (a!33 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!32)))
(let ((a!34 (fp.add roundNearestTiesToEven
                    a!31
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!33)
                                    (fp.abs a!28))
                            ((_ to_fp 11 53) #x3d81e7da90d98297))))
      (a!35 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!33 a!28)
                            ((_ to_fp 11 53) #x3d81e7da90d98297)))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    a!34
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!35)
                                    (fp.abs a!32))
                            ((_ to_fp 11 53) #x3daf101e52df70a8))))
      (a!37 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!35 a!32)
                            ((_ to_fp 11 53) #x3daf101e52df70a8)))))
(let ((a!38 (fp.add roundNearestTiesToEven
                    (fp.abs a!37)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!33 a!28)
                                    ((_ to_fp 11 53) #x3d81e7da90d98297)))))
      (a!39 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!37
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!33 a!28)
                                    ((_ to_fp 11 53) #x3d81e7da90d98297)))
                    ((_ to_fp 11 53) #x3dc1e1a15f5692e9))))
(let ((a!40 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!39)))
(let ((a!41 (fp.add roundNearestTiesToEven
                    (fp.abs a!40)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!32)
                                    ((_ to_fp 11 53) #x3daf101e52df70a8)))))
      (a!43 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!40
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!32)
                                    ((_ to_fp 11 53) #x3daf101e52df70a8)))
                    ((_ to_fp 11 53) #xbdb4dcf93e76209c))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!36
                            (fp.add roundNearestTiesToEven
                                    a!38
                                    ((_ to_fp 11 53) #x3dc1e1a15f5692e9)))
                    (fp.add roundNearestTiesToEven
                            a!41
                            ((_ to_fp 11 53) #x3db4dcf93e76209c))))
      (a!44 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!43)))
(let ((a!45 (fp.add roundNearestTiesToEven
                    a!42
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!44)
                                    (fp.abs a!39))
                            ((_ to_fp 11 53) #x3e0334ca4aca4422))))
      (a!46 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!44 a!39)
                            ((_ to_fp 11 53) #xbe0334ca4aca4422)))))
(let ((a!47 (fp.add roundNearestTiesToEven
                    a!45
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!46)
                                    (fp.abs a!43))
                            ((_ to_fp 11 53) #x3e30790b9b1fa782))))
      (a!48 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!46 a!43)
                            ((_ to_fp 11 53) #xbe30790b9b1fa782)))))
(let ((a!49 (fp.add roundNearestTiesToEven
                    (fp.abs a!48)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!44 a!39)
                                    ((_ to_fp 11 53) #xbe0334ca4aca4422)))))
      (a!50 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!48
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!44 a!39)
                                    ((_ to_fp 11 53) #xbe0334ca4aca4422)))
                    ((_ to_fp 11 53) #xbe5c415394c05f14))))
(let ((a!51 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!50)))
(let ((a!52 (fp.add roundNearestTiesToEven
                    (fp.abs a!51)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!46 a!43)
                                    ((_ to_fp 11 53) #xbe30790b9b1fa782)))))
      (a!54 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!51
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!46 a!43)
                                    ((_ to_fp 11 53) #xbe30790b9b1fa782)))
                    ((_ to_fp 11 53) #xbe90dbfd2e996c58))))
(let ((a!53 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!47
                            (fp.add roundNearestTiesToEven
                                    a!49
                                    ((_ to_fp 11 53) #x3e5c415394c05f14)))
                    (fp.add roundNearestTiesToEven
                            a!52
                            ((_ to_fp 11 53) #x3e90dbfd2e996c58))))
      (a!55 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!54)))
(let ((a!56 (fp.add roundNearestTiesToEven
                    a!53
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!55)
                                    (fp.abs a!50))
                            ((_ to_fp 11 53) #x3ed048df49c9dffc))))
      (a!57 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!55 a!50)
                            ((_ to_fp 11 53) #xbed048df49c9dffc)))))
(let ((a!58 (fp.add roundNearestTiesToEven
                    a!56
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!57)
                                    (fp.abs a!54))
                            ((_ to_fp 11 53) #x3f1cfd7f804aab76))))
      (a!59 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!57 a!54)
                            ((_ to_fp 11 53) #xbf1cfd7f804aab76)))))
(let ((a!60 (fp.add roundNearestTiesToEven
                    (fp.abs a!59)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!55 a!50)
                                    ((_ to_fp 11 53) #xbed048df49c9dffc)))))
      (a!61 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!59
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!55 a!50)
                                    ((_ to_fp 11 53) #xbed048df49c9dffc)))
                    ((_ to_fp 11 53) #xbf83fda053fcdb4d))))
(let ((a!62 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!61)))
      (a!67 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!61)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!57 a!54)
                            ((_ to_fp 11 53) #xbf1cfd7f804aab76)))))
(let ((a!63 (fp.add roundNearestTiesToEven
                    a!62
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!57 a!54)
                                    ((_ to_fp 11 53) #xbf1cfd7f804aab76)))))
      (a!68 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fd8000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!67
                                    ((_ to_fp 11 53) #x3f8d4316ab62a28a)))
                    ((_ to_fp 11 53) #x7fffffffffffffff))))
(let ((a!64 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!58
                            (fp.add roundNearestTiesToEven
                                    a!60
                                    ((_ to_fp 11 53) #x3f83fda053fcdb4d)))
                    (fp.add roundNearestTiesToEven
                            a!63
                            ((_ to_fp 11 53) #x3f8d4316ab62a28a)))))
(let ((a!65 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3cb0000000000000)
                                    a!64)
                            ((_ to_fp 11 53) #x3c814b37f4b51f71))
                    ((_ to_fp 11 53) #x7fffffffffffffff))))
  (FPCHECK_FADD_ACCURACY
    a!65
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3cc0000000000000)
            (fp.abs (fp.mul roundNearestTiesToEven a!66 a!68)))))))))))))))))))))))))))))))))))))))))))

(check-sat)
(exit)
