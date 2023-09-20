(declare-fun limit_ack!1315 () (_ BitVec 64))
(declare-fun epsabs_ack!1320 () (_ BitVec 64))
(declare-fun a_ack!1321 () (_ BitVec 64))
(declare-fun x1_ack!1316 () (_ BitVec 64))
(declare-fun x2_ack!1317 () (_ BitVec 64))
(declare-fun x3_ack!1318 () (_ BitVec 64))
(declare-fun b_ack!1319 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1315)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1320)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1316) ((_ to_fp 11 53) a_ack!1321))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1317) ((_ to_fp 11 53) x1_ack!1316))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1318) ((_ to_fp 11 53) x2_ack!1317))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1319) ((_ to_fp 11 53) x3_ack!1318))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1321)
                                   ((_ to_fp 11 53) x1_ack!1316))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1321)
                           ((_ to_fp 11 53) x1_ack!1316))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1316)
                                   ((_ to_fp 11 53) a_ack!1321)))
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
  (FPCHECK_FADD_OVERFLOW
    (fp.abs (fp.mul roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x3fc321082b7cd10f)))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fa0ab76a4a94042)
            (fp.add roundNearestTiesToEven (fp.abs a!4) (fp.abs a!5)))))))

(check-sat)
(exit)
