(declare-fun a_ack!6277 () (_ BitVec 32))
(declare-fun b_ack!6275 () (_ BitVec 32))
(declare-fun c_ack!6276 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!6277 #x00000000)))
(assert (not (bvslt b_ack!6275 a_ack!6277)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6276) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!6277 #x00000000)))
(assert (not (= #x00000000 a_ack!6277)))
(assert (not (= #x00000001 a_ack!6277)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6276) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!6276) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!6276))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!6277 a_ack!6277))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!6277))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6276) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!6277)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6276)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!6277))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!6276)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!6277))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!6276)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!6277))
            ((_ to_fp 11 53) #x3fef5c28f5c28f5c))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!6276)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!6277))
            ((_ to_fp 11 53) #x3ff051eb851eb852))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!6276)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!6277))
            ((_ to_fp 11 53) #x3fec28f5c28f5c29))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!6276)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!6277))
            ((_ to_fp 11 53) #x3ff1eb851eb851ec))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!6276)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!6277))
            ((_ to_fp 11 53) #x3feccccccccccccd))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!6276)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!6277))
            ((_ to_fp 11 53) #x3ff199999999999a))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4026000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4014000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6276)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!6277))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbc4bbbe8cbcb8fbd))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!4)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3c711222fce06f29))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!5)
                           a!4)
                   ((_ to_fp 11 53) #xbc94dd0daef94bb4))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!6)
                           a!5)
                   ((_ to_fp 11 53) #x3cb94db1c568487f))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!7)
                           a!6)
                   ((_ to_fp 11 53) #xbcde702a6b58a478))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!8)
                           a!7)
                   ((_ to_fp 11 53) #x3d0225e8a47d9640))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!9)
                            a!8)
                    ((_ to_fp 11 53) #xbd25707f58f82a61))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!10)
                            a!9)
                    ((_ to_fp 11 53) #x3d49133ca5bb62a1))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!11)
                            a!10)
                    ((_ to_fp 11 53) #xbd6d035b9ff9bef9))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!12)
                            a!11)
                    ((_ to_fp 11 53) #x3d90974a94a53d6a))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!13)
                            a!12)
                    ((_ to_fp 11 53) #xbdb2bcfadee8bf50))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!14)
                            a!13)
                    ((_ to_fp 11 53) #x3dd4e08def5bb8fa))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!15)
                            a!14)
                    ((_ to_fp 11 53) #xbdf6eb128f4fdc48))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!16)
                            a!15)
                    ((_ to_fp 11 53) #x3e18c14c2781ff02))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    a!3
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!17)
                                    a!16)
                            ((_ to_fp 11 53) #xbe3a44cd3b66a4ff)))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven (fp.abs a!18) (fp.abs a!17))
    #x3e5b55d63e79f537))))))))))))))))))))

(check-sat)
(exit)
