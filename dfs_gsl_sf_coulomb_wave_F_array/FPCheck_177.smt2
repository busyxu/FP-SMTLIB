(declare-fun d_ack!1278 () (_ BitVec 64))
(declare-fun b_ack!1277 () (_ BitVec 32))
(declare-fun a_ack!1280 () (_ BitVec 64))
(declare-fun c_ack!1279 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!1278) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000000 b_ack!1277)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1280) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1279)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1279)
                                   ((_ to_fp 11 53) c_ack!1279)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1279)
                                   ((_ to_fp 11 53) c_ack!1279)))))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1279)
                                   ((_ to_fp 11 53) c_ack!1279)))))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4030000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1279)
                                   ((_ to_fp 11 53) c_ack!1279)))))
      (a!7 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x402903c27f8b9c81)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4039000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1279)
                                   ((_ to_fp 11 53) c_ack!1279)))))
      (a!8 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4042000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1279)
                                   ((_ to_fp 11 53) c_ack!1279)))))
      (a!10 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4048800000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1279)
                                    ((_ to_fp 11 53) c_ack!1279)))))
      (a!11 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4050000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1279)
                                    ((_ to_fp 11 53) c_ack!1279))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffffffffff950)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4010000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!6
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4014000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x4018000000000000)))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven
            a!9
            (fp.mul roundNearestTiesToEven
                    a!10
                    ((_ to_fp 11 53) #x401c000000000000)))
    (fp.mul roundNearestTiesToEven a!11 ((_ to_fp 11 53) #x4020000000000000))))))))

(check-sat)
(exit)
