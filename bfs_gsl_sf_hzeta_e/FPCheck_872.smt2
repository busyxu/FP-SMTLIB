(declare-fun a_ack!2476 () (_ BitVec 64))
(declare-fun b_ack!2475 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2476) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2475) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) a_ack!2476))
                          (CF_log b_ack!2475))
                  ((_ to_fp 11 53) #xc0861b2bdd7abcd2))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) a_ack!2476))
                          (CF_log b_ack!2475))
                  ((_ to_fp 11 53) #x40862642fefa39ef))))
  (not a!1)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2476) ((_ to_fp 11 53) #x404b000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2476) ((_ to_fp 11 53) #x403b000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2476) ((_ to_fp 11 53) #x403b000000000000))))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2475))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!2476))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb5555555555555)
                           ((_ to_fp 11 53) a_ack!2476))
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!2475)))))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!3)
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!6
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   a!7
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!10
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!11
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!12
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!14 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!2
                                   (fp.add roundNearestTiesToEven a!13 a!2)))
                   ((_ to_fp 11 53) #x3ca0000000000000))))
  (not a!14))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2475))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!2476))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!2475)))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!2475)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!2 a!5)
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!2476)))))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!2476))
                    (fp.div roundNearestTiesToEven
                            a!2
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf56c16c16c16c17)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   a!1))
                   a!3))
      (a!7 (fp.add roundNearestTiesToEven
                   a!6
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   a!7
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!10
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!11
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!12
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    a!13
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!14
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!17 (fp.abs (fp.div roundNearestTiesToEven
                            a!4
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!15 a!16)
                                    a!4)))))
  (not (fp.lt a!17 ((_ to_fp 11 53) #x3ca0000000000000))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2475))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!2476))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2475))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2475))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f01566abc011567)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   a!1)
                           a!2)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!2475)))
                   a!5))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!4 a!7)
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!2476)))))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!2476))
                    (fp.div roundNearestTiesToEven
                            a!4
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!2476)))))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf56c16c16c16c17)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1))
                    a!6)))
(let ((a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!10
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!11
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!12
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    a!13
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!14
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    a!15
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!16
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!20 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!3
                            (fp.div roundNearestTiesToEven a!6 a!5))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!17 a!18)
                                    a!19)
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    (fp.div roundNearestTiesToEven a!6 a!5))))))
  (not (fp.lt (fp.abs a!20) ((_ to_fp 11 53) #x3ca0000000000000))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2475))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!2476))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2475))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2475))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!2475))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   a!1)
                           a!2)
                   a!3))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!5
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!2475)))
                   a!6))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!5 a!9)
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!2476))
                    (fp.div roundNearestTiesToEven
                            a!5
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475)))))
      (a!22 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f01566abc011567)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1)
                            a!2))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbeabbd779334ef0b)
                           a!4)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!7 a!6)
                           a!6)))
      (a!11 (fp.add roundNearestTiesToEven
                    a!10
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf56c16c16c16c17)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1))
                    a!7)))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!11
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!12
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    a!13
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!14
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    a!15
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!16
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    a!17
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    a!18
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!19 a!20)
                                    a!21)
                            (fp.mul roundNearestTiesToEven
                                    a!22
                                    (fp.div roundNearestTiesToEven a!7 a!6)))
                    a!8)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!8 a!23))
              ((_ to_fp 11 53) #x3ca0000000000000))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2475))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!2476))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2475))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2475))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   a!1)
                           a!2)
                   a!3))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!6
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!2475)))
                   a!7))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!6 a!10)
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!2476))
                    (fp.div roundNearestTiesToEven
                            a!6
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475)))))
      (a!23 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f01566abc011567)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1)
                            a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e566a8f2bf70ebe)
                           (fp.mul roundNearestTiesToEven a!4 a!5))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (fp.div roundNearestTiesToEven a!8 a!7)
                                   a!7)
                           a!7)))
      (a!12 (fp.add roundNearestTiesToEven
                    a!11
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf56c16c16c16c17)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1))
                    a!8)))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!12
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    a!13
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!14
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    a!15
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!16
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    a!17
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    a!18
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    a!19
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!20 a!21)
                                    a!22)
                            (fp.mul roundNearestTiesToEven
                                    a!23
                                    (fp.div roundNearestTiesToEven a!8 a!7)))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbeabbd779334ef0b)
                                    a!4)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!8 a!7)
                                    a!7)))))
(let ((a!25 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!9
                                   (fp.add roundNearestTiesToEven a!24 a!9)))
                   ((_ to_fp 11 53) #x3ca0000000000000))))
  (not a!25)))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2475))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!2476))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2475))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2475))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   a!1)
                           a!2)
                   a!3))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!7
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!2475)))
                   a!8))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!7 a!12)
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!2476))
                    (fp.div roundNearestTiesToEven
                            a!7
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475)))))
      (a!25 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f01566abc011567)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1)
                            a!2))))
(let ((a!10 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!9 a!8)
                            a!8)
                    a!8))
      (a!14 (fp.add roundNearestTiesToEven
                    a!13
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf56c16c16c16c17)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1))
                    a!9)))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbe022805d644267f)
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!4 a!5)
                                    a!6))
                    (fp.div roundNearestTiesToEven a!10 a!8)))
      (a!15 (fp.add roundNearestTiesToEven
                    a!14
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    a!15
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!16
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    a!17
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    a!18
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    a!19
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    a!20
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    a!21
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!22 a!23)
                                    a!24)
                            (fp.mul roundNearestTiesToEven
                                    a!25
                                    (fp.div roundNearestTiesToEven a!9 a!8)))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbeabbd779334ef0b)
                                    a!4)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!9 a!8)
                                    a!8)))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    a!26
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e566a8f2bf70ebe)
                                    (fp.mul roundNearestTiesToEven a!4 a!5))
                            a!10))))
(let ((a!28 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!11
                                   (fp.add roundNearestTiesToEven a!27 a!11)))
                   ((_ to_fp 11 53) #x3ca0000000000000))))
  (not a!28))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!9 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2475))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) a_ack!2476))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   a!1)
                           a!2)
                   a!3))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475)))
                    a!10))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!9 a!14)
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!2476))
                    (fp.div roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475)))))
      (a!27 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f01566abc011567)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1)
                            a!2))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3dad6db2c4e09162)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!4 a!5)
                                   a!6)
                           a!7)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!11 a!10)
                            a!10)
                    a!10))
      (a!16 (fp.add roundNearestTiesToEven
                    a!15
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf56c16c16c16c17)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1))
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!8
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!12 a!10)
                            a!10)))
      (a!17 (fp.add roundNearestTiesToEven
                    a!16
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!30 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbe022805d644267f)
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!4 a!5)
                                    a!6))
                    (fp.div roundNearestTiesToEven a!12 a!10))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    a!17
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    a!18
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    a!19
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    a!20
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    a!21
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    a!22
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    a!23
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!24 a!25)
                                    a!26)
                            (fp.mul roundNearestTiesToEven
                                    a!27
                                    (fp.div roundNearestTiesToEven a!11 a!10)))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbeabbd779334ef0b)
                                    a!4)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!11 a!10)
                                    a!10)))))
(let ((a!29 (fp.add roundNearestTiesToEven
                    a!28
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e566a8f2bf70ebe)
                                    (fp.mul roundNearestTiesToEven a!4 a!5))
                            a!12))))
(let ((a!31 (fp.abs (fp.div roundNearestTiesToEven
                            a!13
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!29 a!30)
                                    a!13)))))
  (not (fp.lt a!31 ((_ to_fp 11 53) #x3ca0000000000000))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4028000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4028000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!10 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) a_ack!2476))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   a!1)
                           a!2)
                   a!3))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475)))
                    a!11))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!10 a!15)
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!2476))
                    (fp.div roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475)))))
      (a!28 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f01566abc011567)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1)
                            a!2))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!5)
                           a!6)
                   a!7))
      (a!13 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!12 a!11)
                            a!11)
                    a!11))
      (a!17 (fp.add roundNearestTiesToEven
                    a!16
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!27 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf56c16c16c16c17)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1))
                    a!12)))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbd57da4e1f79955c)
                            (fp.mul roundNearestTiesToEven a!8 a!9))
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!13 a!11)
                                    a!11)
                            a!11)))
      (a!18 (fp.add roundNearestTiesToEven
                    a!17
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!31 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbe022805d644267f)
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!4 a!5)
                                    a!6))
                    (fp.div roundNearestTiesToEven a!13 a!11))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    a!18
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    a!19
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    a!20
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    a!21
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    a!22
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    a!23
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    a!24
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!29 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!25 a!26)
                                    a!27)
                            (fp.mul roundNearestTiesToEven
                                    a!28
                                    (fp.div roundNearestTiesToEven a!12 a!11)))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbeabbd779334ef0b)
                                    a!4)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!12 a!11)
                                    a!11)))))
(let ((a!30 (fp.add roundNearestTiesToEven
                    a!29
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e566a8f2bf70ebe)
                                    (fp.mul roundNearestTiesToEven a!4 a!5))
                            a!13))))
(let ((a!32 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!30 a!31)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3dad6db2c4e09162)
                                    a!8)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!13 a!11)
                                    a!11)))))
(let ((a!33 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!14
                                   (fp.add roundNearestTiesToEven a!32 a!14)))
                   ((_ to_fp 11 53) #x3ca0000000000000))))
  (not a!33)))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4028000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4028000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!11 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) a_ack!2476))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   a!1)
                           a!2)
                   a!3))
      (a!13 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!11
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475)))
                    a!12))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!11 a!17)
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!28 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!2476))
                    (fp.div roundNearestTiesToEven
                            a!11
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475)))))
      (a!30 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f01566abc011567)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1)
                            a!2))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!5)
                           a!6)
                   a!7))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!13 a!12)
                            a!12)
                    a!12))
      (a!19 (fp.add roundNearestTiesToEven
                    a!18
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!29 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf56c16c16c16c17)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1))
                    a!13)))
(let ((a!15 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!14 a!12)
                            a!12)
                    a!12))
      (a!20 (fp.add roundNearestTiesToEven
                    a!19
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!33 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbe022805d644267f)
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!4 a!5)
                                    a!6))
                    (fp.div roundNearestTiesToEven a!14 a!12))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3d0355871d652e9e)
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!8 a!9)
                                    a!10))
                    (fp.div roundNearestTiesToEven a!15 a!12)))
      (a!21 (fp.add roundNearestTiesToEven
                    a!20
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    a!21
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    a!22
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    a!23
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    a!24
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    a!25
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    a!26
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!27 a!28)
                                    a!29)
                            (fp.mul roundNearestTiesToEven
                                    a!30
                                    (fp.div roundNearestTiesToEven a!13 a!12)))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbeabbd779334ef0b)
                                    a!4)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!13 a!12)
                                    a!12)))))
(let ((a!32 (fp.add roundNearestTiesToEven
                    a!31
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e566a8f2bf70ebe)
                                    (fp.mul roundNearestTiesToEven a!4 a!5))
                            a!14))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!32 a!33)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3dad6db2c4e09162)
                                    a!8)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!14 a!12)
                                    a!12)))))
(let ((a!35 (fp.add roundNearestTiesToEven
                    a!34
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbd57da4e1f79955c)
                                    (fp.mul roundNearestTiesToEven a!8 a!9))
                            a!15))))
(let ((a!36 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!16
                                   (fp.add roundNearestTiesToEven a!35 a!16)))
                   ((_ to_fp 11 53) #x3ca0000000000000))))
  (not a!36))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4028000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4028000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!13 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) a_ack!2476))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   a!1)
                           a!2)
                   a!3))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!13
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475)))
                    a!14))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!13 a!19)
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!30 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!2476))
                    (fp.div roundNearestTiesToEven
                            a!13
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475)))))
      (a!32 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f01566abc011567)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1)
                            a!2))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!5)
                           a!6)
                   a!7))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!15 a!14)
                            a!14)
                    a!14))
      (a!21 (fp.add roundNearestTiesToEven
                    a!20
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!31 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf56c16c16c16c17)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1))
                    a!15)))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbcaf57d968caacf1)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!8 a!9)
                                    a!10)
                            a!11)))
      (a!17 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!16 a!14)
                            a!14)
                    a!14))
      (a!22 (fp.add roundNearestTiesToEven
                    a!21
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!35 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbe022805d644267f)
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!4 a!5)
                                    a!6))
                    (fp.div roundNearestTiesToEven a!16 a!14))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!17 a!14)
                            a!14)))
      (a!23 (fp.add roundNearestTiesToEven
                    a!22
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3d0355871d652e9e)
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!8 a!9)
                                    a!10))
                    (fp.div roundNearestTiesToEven a!17 a!14))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    a!23
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    a!24
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    a!25
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    a!26
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    a!27
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!29 (fp.add roundNearestTiesToEven
                    a!28
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!33 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!29 a!30)
                                    a!31)
                            (fp.mul roundNearestTiesToEven
                                    a!32
                                    (fp.div roundNearestTiesToEven a!15 a!14)))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbeabbd779334ef0b)
                                    a!4)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!15 a!14)
                                    a!14)))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    a!33
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e566a8f2bf70ebe)
                                    (fp.mul roundNearestTiesToEven a!4 a!5))
                            a!16))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!34 a!35)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3dad6db2c4e09162)
                                    a!8)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!16 a!14)
                                    a!14)))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    a!36
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbd57da4e1f79955c)
                                    (fp.mul roundNearestTiesToEven a!8 a!9))
                            a!17))))
(let ((a!39 (fp.abs (fp.div roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!37 a!38)
                                    a!18)))))
  (not (fp.lt a!39 ((_ to_fp 11 53) #x3ca0000000000000))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4028000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4028000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!14 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) a_ack!2476))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   a!1)
                           a!2)
                   a!3))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475)))
                    a!15))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!14 a!20)
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!31 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!2476))
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475)))))
      (a!33 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f01566abc011567)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1)
                            a!2))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!5)
                           a!6)
                   a!7))
      (a!17 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!16 a!15)
                            a!15)
                    a!15))
      (a!22 (fp.add roundNearestTiesToEven
                    a!21
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!32 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf56c16c16c16c17)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1))
                    a!16)))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!9)
                            a!10)
                    a!11))
      (a!18 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!17 a!15)
                            a!15)
                    a!15))
      (a!23 (fp.add roundNearestTiesToEven
                    a!22
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!36 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbe022805d644267f)
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!4 a!5)
                                    a!6))
                    (fp.div roundNearestTiesToEven a!17 a!15))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3c5967e1f09c376f)
                            (fp.mul roundNearestTiesToEven a!12 a!13))
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!18 a!15)
                                    a!15)
                            a!15)))
      (a!24 (fp.add roundNearestTiesToEven
                    a!23
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!39 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3d0355871d652e9e)
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!8 a!9)
                                    a!10))
                    (fp.div roundNearestTiesToEven a!18 a!15))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    a!24
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    a!25
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    a!26
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    a!27
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!29 (fp.add roundNearestTiesToEven
                    a!28
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!30 (fp.add roundNearestTiesToEven
                    a!29
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!30 a!31)
                                    a!32)
                            (fp.mul roundNearestTiesToEven
                                    a!33
                                    (fp.div roundNearestTiesToEven a!16 a!15)))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbeabbd779334ef0b)
                                    a!4)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!16 a!15)
                                    a!15)))))
(let ((a!35 (fp.add roundNearestTiesToEven
                    a!34
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e566a8f2bf70ebe)
                                    (fp.mul roundNearestTiesToEven a!4 a!5))
                            a!17))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!35 a!36)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3dad6db2c4e09162)
                                    a!8)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!17 a!15)
                                    a!15)))))
(let ((a!38 (fp.add roundNearestTiesToEven
                    a!37
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbd57da4e1f79955c)
                                    (fp.mul roundNearestTiesToEven a!8 a!9))
                            a!18))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!38 a!39)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbcaf57d968caacf1)
                                    a!12)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!18 a!15)
                                    a!15)))))
(let ((a!41 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!19
                                   (fp.add roundNearestTiesToEven a!40 a!19)))
                   ((_ to_fp 11 53) #x3ca0000000000000))))
  (not a!41)))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4018000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4020000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4028000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   ((_ to_fp 11 53) #x4028000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x4034000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x4034000000000000))
                            ((_ to_fp 11 53) #x4000000000000000))))
      (a!15 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) a_ack!2476))))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            ((_ to_fp 11 53) b_ack!2475))))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) #x3fe0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2476)
                                   a!1)
                           a!2)
                   a!3))
      (a!17 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!15
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475)))
                    a!16))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!15 a!22)
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!33 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb5555555555555)
                            ((_ to_fp 11 53) a_ack!2476))
                    (fp.div roundNearestTiesToEven
                            a!15
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2475)))))
      (a!35 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f01566abc011567)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1)
                            a!2))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!5)
                           a!6)
                   a!7))
      (a!18 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!17 a!16)
                            a!16)
                    a!16))
      (a!24 (fp.add roundNearestTiesToEven
                    a!23
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!34 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbf56c16c16c16c17)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2476)
                                    a!1))
                    a!17)))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!8 a!9)
                            a!10)
                    a!11))
      (a!19 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!18 a!16)
                            a!16)
                    a!16))
      (a!25 (fp.add roundNearestTiesToEven
                    a!24
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbe022805d644267f)
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!4 a!5)
                                    a!6))
                    (fp.div roundNearestTiesToEven a!18 a!16))))
(let ((a!20 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!19 a!16)
                            a!16)
                    a!16))
      (a!26 (fp.add roundNearestTiesToEven
                    a!25
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476)))))
      (a!41 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3d0355871d652e9e)
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!8 a!9)
                                    a!10))
                    (fp.div roundNearestTiesToEven a!19 a!16))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #xbc0497d9033a2b5c)
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!12 a!13)
                                    a!14))
                    (fp.div roundNearestTiesToEven a!20 a!16)))
      (a!27 (fp.add roundNearestTiesToEven
                    a!26
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    a!27
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!29 (fp.add roundNearestTiesToEven
                    a!28
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!30 (fp.add roundNearestTiesToEven
                    a!29
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    a!30
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!32 (fp.add roundNearestTiesToEven
                    a!31
                    (CF_pow (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!2475))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) a_ack!2476))))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!32 a!33)
                                    a!34)
                            (fp.mul roundNearestTiesToEven
                                    a!35
                                    (fp.div roundNearestTiesToEven a!17 a!16)))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbeabbd779334ef0b)
                                    a!4)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!17 a!16)
                                    a!16)))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    a!36
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e566a8f2bf70ebe)
                                    (fp.mul roundNearestTiesToEven a!4 a!5))
                            a!18))))
(let ((a!39 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!37 a!38)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3dad6db2c4e09162)
                                    a!8)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!18 a!16)
                                    a!16)))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    a!39
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbd57da4e1f79955c)
                                    (fp.mul roundNearestTiesToEven a!8 a!9))
                            a!19))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!40 a!41)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbcaf57d968caacf1)
                                    a!12)
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!19 a!16)
                                    a!16)))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    a!42
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3c5967e1f09c376f)
                                    (fp.mul roundNearestTiesToEven a!12 a!13))
                            a!20))))
  (FPCHECK_FDIV_OVERFLOW a!21 (fp.add roundNearestTiesToEven a!43 a!21))))))))))))))))))))

(check-sat)
(exit)
