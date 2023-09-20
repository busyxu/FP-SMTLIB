(declare-fun x_ack!10149 () (_ BitVec 64))
(declare-fun nu1_ack!10147 () (_ BitVec 64))
(declare-fun nu2_ack!10148 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!10149) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!10149) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!10147)
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!10148)
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!10149) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!10149) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!10149) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!10148)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!10147)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!10149) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!10149) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) x_ack!10149) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!10149))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!10149))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!10148)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!10147)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!10149))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!10149))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!10149))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) x_ack!10149))
       ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!10148)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!10147)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!10148)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!10147)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!10148)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!10147)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu2_ack!10148)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!10147)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu2_ack!10148)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu1_ack!10147)
                                    ((_ to_fp 11 53) #x4000000000000000)))
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
      (a!17 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4006d3b8e31068e4)
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3ff003ab59d1c825))
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x4010d666dada6aa8)))))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!16 a!16)
                                    a!16)
                            a!16)
                    a!16))
      (a!20 (fp.mul roundNearestTiesToEven
                    a!16
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf122c77e28883ce)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f0559a074362da9)
                                    a!16)))))
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
      (a!18 (fp.div roundNearestTiesToEven
                    a!17
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x4004f368a0a50351))
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x4025b71ff2054d90)))))
      (a!21 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf21e5a3f738f3ca)
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f1bfa716513d256)
                                    a!20)))))
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
      (a!22 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            a!19
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f1dde6d37545b3b)
                                    (fp.mul roundNearestTiesToEven a!16 a!21))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!10148)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven a!1 a!7))))
  (FPCHECK_FSUB_ACCURACY
    (fp.add roundNearestTiesToEven a!8 (fp.mul roundNearestTiesToEven a!9 a!15))
    (fp.mul roundNearestTiesToEven a!16 a!22))))))))

(check-sat)
(exit)
