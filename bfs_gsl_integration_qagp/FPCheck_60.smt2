(declare-fun limit_ack!1021 () (_ BitVec 64))
(declare-fun epsabs_ack!1026 () (_ BitVec 64))
(declare-fun a_ack!1027 () (_ BitVec 64))
(declare-fun x1_ack!1022 () (_ BitVec 64))
(declare-fun x2_ack!1023 () (_ BitVec 64))
(declare-fun x3_ack!1024 () (_ BitVec 64))
(declare-fun b_ack!1025 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!1021)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1026)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!1022) ((_ to_fp 11 53) a_ack!1027))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!1023) ((_ to_fp 11 53) x1_ack!1022))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!1024) ((_ to_fp 11 53) x2_ack!1023))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1025) ((_ to_fp 11 53) x3_ack!1024))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1027)
                                   ((_ to_fp 11 53) x1_ack!1022))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1022)
                                   ((_ to_fp 11 53) a_ack!1027)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1027)
                                   ((_ to_fp 11 53) x1_ack!1022)))
                   a!1)))
  (FPCHECK_FDIV_UNDERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
