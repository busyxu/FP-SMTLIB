(declare-fun p_ack!2407 () (_ BitVec 64))
(declare-fun n_ack!2406 () (_ BitVec 32))
(declare-fun k_ack!2405 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!2407) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!2407) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!2406)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) p_ack!2407) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) p_ack!2407) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!2407) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) p_ack!2407) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!2406)
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2405)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!2406)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2405)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!2406)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2405)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!2406)
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2405)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!2406)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2405)
                    ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.lt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!2406)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!2405)
                    ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    k_ack!2405)
                                  ((_ to_fp 11 53) #x3ff0000000000000))
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    k_ack!2405)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3fc999999999999a))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp_unsigned 11 53)
                         roundNearestTiesToEven
                         n_ack!2406)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!2405)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             n_ack!2406)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!2405)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             n_ack!2406)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!2405)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             n_ack!2406)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     k_ack!2405)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.lt ((_ to_fp 11 53) p_ack!2407)
                  (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp_unsigned 11 53)
                                    roundNearestTiesToEven
                                    n_ack!2406)
                                  ((_ to_fp 11 53) #x3ff0000000000000))
                          a!1))))
  (not a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!2406)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #xbff007228b4cd147))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!2406)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ffbc8a35d2b114e))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!2406)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff3e48f2c0326b5))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!2406)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x40142eb8f3a779b9))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!2406)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!2406)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             n_ack!2406)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf9a901651b2b525)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa0163058fbcc17)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!2406)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp_unsigned 11 53)
                              roundNearestTiesToEven
                              k_ack!2405)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp_unsigned 11 53)
                              roundNearestTiesToEven
                              n_ack!2406)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp_unsigned 11 53)
                                      roundNearestTiesToEven
                                      k_ack!2405)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!2406)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             n_ack!2406)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f93c8855b9a90b0)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!2406)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!5)))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000a72bcde822b8)
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #xbff007228b4cd147))
                            (fp.add roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ffbc8a35d2b114e)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!10 a!10)
                                    a!10)
                            a!10)
                    a!10))
      (a!14 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf9a901651b2b525)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fa0163058fbcc17)
                                    a!10))))
      (a!19 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4006d3b8e31068e4)
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!18
                                    ((_ to_fp 11 53) #x3ff003ab59d1c825))
                            (fp.add roundNearestTiesToEven
                                    a!18
                                    ((_ to_fp 11 53) #x4010d666dada6aa8)))))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!18 a!18)
                                    a!18)
                            a!18)
                    a!18))
      (a!22 (fp.mul roundNearestTiesToEven
                    a!18
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf122c77e28883ce)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f0559a074362da9)
                                    a!18)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf886be8ce175c95)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!2406)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!6)))
      (a!12 (fp.div roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff3e48f2c0326b5))
                            (fp.add roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x40142eb8f3a779b9)))))
      (a!15 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf886be8ce175c95)
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f93c8855b9a90b0)
                                    a!14))))
      (a!20 (fp.div roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!18
                                    ((_ to_fp 11 53) #x4004f368a0a50351))
                            (fp.add roundNearestTiesToEven
                                    a!18
                                    ((_ to_fp 11 53) #x4025b71ff2054d90)))))
      (a!23 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf21e5a3f738f3ca)
                    (fp.mul roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f1bfa716513d256)
                                    a!22)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f7399c6b2fe3c2e)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     n_ack!2406)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!7)))
      (a!16 (fp.add roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f7399c6b2fe3c2e)
                                    (fp.mul roundNearestTiesToEven a!10 a!15)))))
      (a!24 (fp.add roundNearestTiesToEven
                    a!20
                    (fp.mul roundNearestTiesToEven
                            a!21
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f1dde6d37545b3b)
                                    (fp.mul roundNearestTiesToEven a!18 a!23))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000a72bcde822b8)
                                   a!1)
                           a!2)
                   (fp.mul roundNearestTiesToEven a!4 a!8))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp_unsigned 11 53)
                                      roundNearestTiesToEven
                                      n_ack!2406)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!9)
                    (fp.mul roundNearestTiesToEven a!10 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!17
                                    (fp.mul roundNearestTiesToEven a!18 a!24)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp_unsigned 11 53)
                              roundNearestTiesToEven
                              n_ack!2406)
                            (CF_log p_ack!2407)))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    a!25
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp_unsigned 11 53)
                                      roundNearestTiesToEven
                                      k_ack!2405)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x8000000000ff0000)))))
  (FPCHECK_FMUL_ACCURACY #xbff0000000000000 (CF_exp a!26)))))))))))

(check-sat)
(exit)
