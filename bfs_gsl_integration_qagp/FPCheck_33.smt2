(declare-fun limit_ack!573 () (_ BitVec 64))
(declare-fun epsabs_ack!578 () (_ BitVec 64))
(declare-fun a_ack!579 () (_ BitVec 64))
(declare-fun x1_ack!574 () (_ BitVec 64))
(declare-fun x2_ack!575 () (_ BitVec 64))
(declare-fun x3_ack!576 () (_ BitVec 64))
(declare-fun b_ack!577 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!573)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!578)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!574) ((_ to_fp 11 53) a_ack!579))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!575) ((_ to_fp 11 53) x1_ack!574))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!576) ((_ to_fp 11 53) x2_ack!575))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!577) ((_ to_fp 11 53) x3_ack!576))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!579)
                                   ((_ to_fp 11 53) x1_ack!574))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!579)
                                   ((_ to_fp 11 53) x1_ack!574))))))
  (FPCHECK_FDIV_ACCURACY (CF_log a!1) #x7ff8000000000001)))

(check-sat)
(exit)
