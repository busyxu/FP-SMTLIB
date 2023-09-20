(declare-fun a_ack!874 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!874))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!874))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!874))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!874))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!874))
             ((_ to_fp 11 53) #x4020000000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             (ite (fp.gt ((_ to_fp 11 53) a_ack!874)
                         ((_ to_fp 11 53) #x0000000000000000))
                  #x3ff0000000000000
                  #xbff0000000000000)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4030000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!874)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #xbc814b37f4b51f71)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3cb42d169d7dfa04)))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #xbc814b37f4b51f71)))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #x3cb7c76cf0790b3b)))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   a!8
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3cb42d169d7dfa04)))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) #xbce0c0de350f7675)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3cb7c76cf0790b3b)))
                    ((_ to_fp 11 53) #xbcf13428ff6ed89c))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!11)))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #xbce0c0de350f7675)))
                    ((_ to_fp 11 53) #x3d0770f4d8b1819e))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!13)))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!14 a!11)
                            ((_ to_fp 11 53) #x3d280e0abfa04426)))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!15 a!13)
                            ((_ to_fp 11 53) #xbd17a7b85f3869d7)))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!14 a!11)
                                    ((_ to_fp 11 53) #x3d280e0abfa04426)))
                    ((_ to_fp 11 53) #xbd5cbc5c1a3c751e))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!17)))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!15 a!13)
                                    ((_ to_fp 11 53) #xbd17a7b85f3869d7)))
                    ((_ to_fp 11 53) #xbd6953d5171632e8))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!19)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!20 a!17)
                            ((_ to_fp 11 53) #x3d81e7da90d98297)))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!21 a!19)
                            ((_ to_fp 11 53) #x3daf101e52df70a8)))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!22
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!20 a!17)
                                    ((_ to_fp 11 53) #x3d81e7da90d98297)))
                    ((_ to_fp 11 53) #x3dc1e1a15f5692e9))))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!23)))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!24
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!21 a!19)
                                    ((_ to_fp 11 53) #x3daf101e52df70a8)))
                    ((_ to_fp 11 53) #xbdb4dcf93e76209c))))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!25)))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!26 a!23)
                            ((_ to_fp 11 53) #xbe0334ca4aca4422)))))
(let ((a!28 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!27 a!25)
                            ((_ to_fp 11 53) #xbe30790b9b1fa782)))))
(let ((a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!28
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!26 a!23)
                                    ((_ to_fp 11 53) #xbe0334ca4aca4422)))
                    ((_ to_fp 11 53) #xbe5c415394c05f14))))
(let ((a!30 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!29)))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!30
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!27 a!25)
                                    ((_ to_fp 11 53) #xbe30790b9b1fa782)))
                    ((_ to_fp 11 53) #xbe90dbfd2e996c58))))
(let ((a!32 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!31)))
(let ((a!33 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!32 a!29)
                            ((_ to_fp 11 53) #xbed048df49c9dffc)))))
(let ((a!34 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!33 a!31)
                            ((_ to_fp 11 53) #xbf1cfd7f804aab76)))))
(let ((a!35 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!34
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!32 a!29)
                                    ((_ to_fp 11 53) #xbed048df49c9dffc)))
                    ((_ to_fp 11 53) #xbf83fda053fcdb4d))))
(let ((a!36 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000))
                            a!35)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!33 a!31)
                            ((_ to_fp 11 53) #xbf1cfd7f804aab76)))))
(let ((a!37 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fd8000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!36
                                    ((_ to_fp 11 53) #x3f8d4316ab62a28a)))
                    ((_ to_fp 11 53) #x7fffffffffffffff))))
  (FPCHECK_FMUL_ACCURACY
    #x3cc0000000000000
    (fp.abs (fp.mul roundNearestTiesToEven a!1 a!37))))))))))))))))))))))))))))))))))))))))

(check-sat)
(exit)
