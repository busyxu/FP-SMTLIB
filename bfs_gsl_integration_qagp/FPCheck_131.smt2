(declare-fun limit_ack!2022 () (_ BitVec 64))
(declare-fun epsabs_ack!2027 () (_ BitVec 64))
(declare-fun a_ack!2028 () (_ BitVec 64))
(declare-fun x1_ack!2023 () (_ BitVec 64))
(declare-fun x2_ack!2024 () (_ BitVec 64))
(declare-fun x3_ack!2025 () (_ BitVec 64))
(declare-fun b_ack!2026 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!2022)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2027)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2023) ((_ to_fp 11 53) a_ack!2028))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2024) ((_ to_fp 11 53) x1_ack!2023))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2025) ((_ to_fp 11 53) x2_ack!2024))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2026) ((_ to_fp 11 53) x3_ack!2025))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2028)
                                   ((_ to_fp 11 53) x1_ack!2023))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2028)
                           ((_ to_fp 11 53) x1_ack!2023))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2023)
                                   ((_ to_fp 11 53) a_ack!2028)))
                   ((_ to_fp 11 53) #x3febae995e9cb2f3))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FMUL_ACCURACY
    #x3fb335ccd53722e5
    (fp.add roundNearestTiesToEven (fp.abs a!3) (fp.abs a!4))))))

(check-sat)
(exit)
