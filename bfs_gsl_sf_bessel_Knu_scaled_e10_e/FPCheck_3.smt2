(declare-fun b_ack!11 () (_ BitVec 64))
(declare-fun a_ack!12 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!11) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!12) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!12)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
  (FPCHECK_FSUB_OVERFLOW a_ack!12 a!1)))

(check-sat)
(exit)
