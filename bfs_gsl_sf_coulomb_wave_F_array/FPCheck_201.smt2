(declare-fun d_ack!1339 () (_ BitVec 64))
(declare-fun b_ack!1338 () (_ BitVec 32))
(declare-fun a_ack!1341 () (_ BitVec 64))
(declare-fun c_ack!1340 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!1339) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!1338))
(assert (not (bvsle #x00000001 b_ack!1338)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1341) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1340)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1340)
                                   ((_ to_fp 11 53) c_ack!1340)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1340)
                                   ((_ to_fp 11 53) c_ack!1340)))))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1340)
                                   ((_ to_fp 11 53) c_ack!1340)))))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4030000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1340)
                                   ((_ to_fp 11 53) c_ack!1340)))))
      (a!7 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x402903c27f8b9c81)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4039000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1340)
                                   ((_ to_fp 11 53) c_ack!1340)))))
      (a!8 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4042000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1340)
                                   ((_ to_fp 11 53) c_ack!1340))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!1340)))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) c_ack!1340)))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) c_ack!1340)))
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) c_ack!1340)))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            a!6
            (fp.mul roundNearestTiesToEven a!7 ((_ to_fp 11 53) c_ack!1340)))
    (fp.mul roundNearestTiesToEven a!8 ((_ to_fp 11 53) c_ack!1340)))))))

(check-sat)
(exit)
