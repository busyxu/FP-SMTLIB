(declare-fun b_ack!18 () (_ BitVec 32))
(declare-fun a_ack!19 () (_ BitVec 32))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!19 b_ack!18))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!19 b_ack!18))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!19))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FINVALID_LOG a!1 a!1)))

(check-sat)
(exit)
