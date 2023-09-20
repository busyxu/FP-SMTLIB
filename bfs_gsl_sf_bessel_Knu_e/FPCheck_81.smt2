(declare-fun b_ack!203 () (_ BitVec 64))
(declare-fun a_ack!204 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!203) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!204) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!203) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!204) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!203) ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!204)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) a_ack!204) a!1)
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) a_ack!204) a!1))))

(check-sat)
(exit)
