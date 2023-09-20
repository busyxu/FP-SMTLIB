(declare-fun p_ack!1288 () (_ BitVec 64))
(declare-fun k_ack!1286 () (_ BitVec 32))
(declare-fun n_ack!1287 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!1288) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!1288) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule n_ack!1287 k_ack!1286)))
(assert (not (fp.leq ((_ to_fp 11 53) p_ack!1288) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) p_ack!1288) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!1288) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!1288) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!1286)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!1287)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!1286))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!1286)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!1287)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!1286))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!1286)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!1287)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!1286))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!1286)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!1287)
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!1286))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!1286)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!1287)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!1286)))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!1286)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!1287)
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!1286)))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    n_ack!1287)
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    k_ack!1286))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    n_ack!1287)
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    k_ack!1286)))
                  ((_ to_fp 11 53) #x3fc999999999999a))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!1286)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!1287)
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!1286))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!1286)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!1287)
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!1286)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!1286)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!1287)
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!1286)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             k_ack!1286)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             n_ack!1287)
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             k_ack!1286))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp_unsigned 11 53)
                                      roundNearestTiesToEven
                                      k_ack!1286)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp_unsigned 11 53)
                                      roundNearestTiesToEven
                                      n_ack!1287)
                                    ((_ to_fp_unsigned 11 53)
                                      roundNearestTiesToEven
                                      k_ack!1286)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000a72bcde822b8)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbff007228b4cd147))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ffbc8a35d2b114e)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!1)
                                   a!1)
                           a!1)
                   a!1))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf9a901651b2b525)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fa0163058fbcc17)
                                   a!1))))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000a72bcde822b8)
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #xbff007228b4cd147))
                            (fp.add roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ffbc8a35d2b114e)))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!9)
                                    a!9)
                            a!9)
                    a!9))
      (a!13 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf9a901651b2b525)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fa0163058fbcc17)
                                    a!9))))
      (a!18 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4006d3b8e31068e4)
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!17
                                    ((_ to_fp 11 53) #x3ff003ab59d1c825))
                            (fp.add roundNearestTiesToEven
                                    a!17
                                    ((_ to_fp 11 53) #x4010d666dada6aa8)))))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!17 a!17)
                                    a!17)
                            a!17)
                    a!17))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf122c77e28883ce)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f0559a074362da9)
                                    a!17)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff3e48f2c0326b5))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x40142eb8f3a779b9)))))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf886be8ce175c95)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f93c8855b9a90b0)
                                   a!5))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff3e48f2c0326b5))
                            (fp.add roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x40142eb8f3a779b9)))))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf886be8ce175c95)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f93c8855b9a90b0)
                                    a!13))))
      (a!19 (fp.div roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!17
                                    ((_ to_fp 11 53) #x4004f368a0a50351))
                            (fp.add roundNearestTiesToEven
                                    a!17
                                    ((_ to_fp 11 53) #x4025b71ff2054d90)))))
      (a!22 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf21e5a3f738f3ca)
                    (fp.mul roundNearestTiesToEven
                            a!17
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f1bfa716513d256)
                                    a!21)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f7399c6b2fe3c2e)
                                   (fp.mul roundNearestTiesToEven a!1 a!6)))))
      (a!15 (fp.add roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f7399c6b2fe3c2e)
                                    (fp.mul roundNearestTiesToEven a!9 a!14)))))
      (a!23 (fp.add roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            a!20
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f1dde6d37545b3b)
                                    (fp.mul roundNearestTiesToEven a!17 a!22))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3cc0000000000000)
                           (fp.abs (fp.mul roundNearestTiesToEven a!1 a!7)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   (fp.abs a!1)))))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cc0000000000000)
                            (fp.abs (fp.mul roundNearestTiesToEven a!9 a!15)))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3cb0000000000000)
                                    (fp.abs a!9)))))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cc0000000000000)
                            (fp.abs (fp.mul roundNearestTiesToEven a!17 a!23)))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3cb0000000000000)
                                    (fp.abs a!17)))))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!1 a!7))
                            (fp.abs (fp.mul roundNearestTiesToEven a!9 a!15)))
                    (fp.abs (fp.mul roundNearestTiesToEven a!17 a!23)))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!8 a!16)
            a!24)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3cc0000000000000) a!25))))))))

(check-sat)
(exit)
