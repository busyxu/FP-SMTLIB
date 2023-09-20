(declare-fun a_ack!1201 () (_ BitVec 64))
(declare-fun c_ack!1200 () (_ BitVec 64))
(declare-fun b_ack!1199 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1201) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1201))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1200))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!1200))
            ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) c_ack!1200))
       ((_ to_fp 11 53) #xc086232bdd7abcd2)))
(assert (bvsle #x00000001 b_ack!1199))
(assert (bvsle #x00000002 b_ack!1199))
(assert (bvsle #x00000003 b_ack!1199))
(assert (bvsle #x00000004 b_ack!1199))
(assert (bvsle #x00000005 b_ack!1199))
(assert (bvsle #x00000006 b_ack!1199))
(assert (bvsle #x00000007 b_ack!1199))
(assert (bvsle #x00000008 b_ack!1199))
(assert (bvsle #x00000009 b_ack!1199))
(assert (bvsle #x0000000a b_ack!1199))
(assert (bvsle #x0000000b b_ack!1199))
(assert (bvsle #x0000000c b_ack!1199))
(assert (bvsle #x0000000d b_ack!1199))
(assert (bvsle #x0000000e b_ack!1199))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1201)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1201)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1201)
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1201)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1201)
                                   ((_ to_fp 11 53) #x4014000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x4018000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x4022000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x4024000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x4026000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x4028000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x402a000000000000)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1201)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x7fdfffffffffffff))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1201)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           a!3))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x7fdfffffffffffff))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1201)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           a!5))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x7fdfffffffffffff))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1201)
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!7))))
(let ((a!10 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x4014000000000000))
                            a!9))))
(let ((a!12 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!11))))
(let ((a!14 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x401c000000000000))
                            a!13))))
(let ((a!16 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!14
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!15))))
(let ((a!18 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!16
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x4022000000000000))
                            a!17))))
(let ((a!20 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!18
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!19))))
(let ((a!22 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!20
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x4026000000000000))
                            a!21))))
(let ((a!24 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!22
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!23))))
(let ((a!26 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!24
                            ((_ to_fp 11 53) #x7fdfffffffffffff))
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1201)
                                    ((_ to_fp 11 53) #x402a000000000000))
                            a!25))))
  (FPCHECK_FMUL_UNDERFLOW a!26 #x7fdfffffffffffff))))))))))))))))

(check-sat)
(exit)
