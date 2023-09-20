(declare-fun limit_ack!1329 () (_ BitVec 64))
(declare-fun epsabs_ack!1334 () (_ BitVec 64))
(declare-fun a_ack!1335 () (_ BitVec 64))
(declare-fun x1_ack!1330 () (_ BitVec 64))
(declare-fun x2_ack!1331 () (_ BitVec 64))
(declare-fun x3_ack!1332 () (_ BitVec 64))
(declare-fun b_ack!1333 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1329)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1334)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1330) ((_ to_fp 11 53) a_ack!1335))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1331) ((_ to_fp 11 53) x1_ack!1330))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1332) ((_ to_fp 11 53) x2_ack!1331))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1333) ((_ to_fp 11 53) x3_ack!1332))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1335)
                                   ((_ to_fp 11 53) x1_ack!1330))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1335)
                           ((_ to_fp 11 53) x1_ack!1330))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1330)
                                   ((_ to_fp 11 53) a_ack!1335)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!3)))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!5 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!3)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.abs (fp.mul roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x3fc321082b7cd10f)))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fa0ab76a4a94042)
            (fp.add roundNearestTiesToEven (fp.abs a!4) (fp.abs a!5)))))))

(check-sat)
(exit)
