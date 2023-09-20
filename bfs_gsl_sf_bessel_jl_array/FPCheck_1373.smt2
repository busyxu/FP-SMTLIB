(declare-fun a_ack!4183 () (_ BitVec 32))
(declare-fun b_ack!4182 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!4183 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4182) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4182) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!4183) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4182) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4182) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!4183)))
(assert (not (= #x00000000 a_ack!4183)))
(assert (not (= #x00000001 a_ack!4183)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4183))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!4182)
                      ((_ to_fp 11 53) b_ack!4182))
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4005bf0a8b145769))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvmul (bvadd #x00000001 a_ack!4183)
                           (bvadd #x00000001 a_ack!4183))
                    a_ack!4183))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) b_ack!4182))
              (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!4183))
       ((_ to_fp 11 53) #x407965fea53d6e3a)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!4182) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4183))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!4182)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4183))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1))
                  ((_ to_fp 11 53) #x3f947ae147ae147b))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!4182)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4183))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!4182)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4183))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fef5c28f5c28f5c)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!4182)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4183))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ff051eb851eb852)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!4182)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4183))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fec28f5c28f5c29)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!4182)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4183))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ff1eb851eb851ec)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!4182)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4183))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3feccccccccccccd)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!4182)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4183))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!4182)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4183))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4026000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   a!1))
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
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!4)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c4bbbe8cbcb8fbd))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #xbc4bbbe8cbcb8fbd))))
      (a!9 (fp.abs (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #xbc4bbbe8cbcb8fbd)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!6)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c711222fce06f29))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c711222fce06f29))))
      (a!13 (fp.abs (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3c711222fce06f29)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    a!7
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven (fp.abs a!8) a!9)
                            ((_ to_fp 11 53) #x3c94dd0daef94bb4))))
      (a!11 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #xbc4bbbe8cbcb8fbd)))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #xbc94dd0daef94bb4)))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    a!10
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven (fp.abs a!12) a!13)
                            ((_ to_fp 11 53) #x3cb94db1c568487f))))
      (a!15 (fp.sub roundNearestTiesToEven
                    a!12
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3c711222fce06f29)))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            a!15
                            ((_ to_fp 11 53) #x3cb94db1c568487f)))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.abs a!16)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #xbc94dd0daef94bb4)))))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #xbc94dd0daef94bb4)))
                    ((_ to_fp 11 53) #xbcde702a6b58a478))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!18)))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.abs a!19)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x3cb94db1c568487f)))))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!19
                            (fp.add roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x3cb94db1c568487f)))
                    ((_ to_fp 11 53) #x3d0225e8a47d9640))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    a!17
                                    ((_ to_fp 11 53) #x3cde702a6b58a478)))
                    (fp.add roundNearestTiesToEven
                            a!20
                            ((_ to_fp 11 53) #x3d0225e8a47d9640))))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!22)))
(let ((a!24 (fp.add roundNearestTiesToEven
                    a!21
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!23)
                                    (fp.abs a!18))
                            ((_ to_fp 11 53) #x3d25707f58f82a61))))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!23 a!18)
                            ((_ to_fp 11 53) #xbd25707f58f82a61)))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    a!24
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!25)
                                    (fp.abs a!22))
                            ((_ to_fp 11 53) #x3d49133ca5bb62a1))))
      (a!27 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!25 a!22)
                            ((_ to_fp 11 53) #x3d49133ca5bb62a1)))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.abs a!27)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!23 a!18)
                                    ((_ to_fp 11 53) #xbd25707f58f82a61)))))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!27
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!23 a!18)
                                    ((_ to_fp 11 53) #xbd25707f58f82a61)))
                    ((_ to_fp 11 53) #xbd6d035b9ff9bef9))))
(let ((a!30 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!29)))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.abs a!30)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!25 a!22)
                                    ((_ to_fp 11 53) #x3d49133ca5bb62a1)))))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!30
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!25 a!22)
                                    ((_ to_fp 11 53) #x3d49133ca5bb62a1)))
                    ((_ to_fp 11 53) #x3d90974a94a53d6a))))
(let ((a!32 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!26
                            (fp.add roundNearestTiesToEven
                                    a!28
                                    ((_ to_fp 11 53) #x3d6d035b9ff9bef9)))
                    (fp.add roundNearestTiesToEven
                            a!31
                            ((_ to_fp 11 53) #x3d90974a94a53d6a))))
      (a!34 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!33)))
  (FPCHECK_FADD_UNDERFLOW
    a!32
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven (fp.abs a!34) (fp.abs a!29))
            ((_ to_fp 11 53) #x3db2bcfadee8bf50))))))))))))))))))))))))

(check-sat)
(exit)
