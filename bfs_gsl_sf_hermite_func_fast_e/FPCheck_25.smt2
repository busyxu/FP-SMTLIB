(declare-fun a_ack!99 () (_ BitVec 32))
(declare-fun b_ack!98 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!99 #x000003e8)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!98) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FINVALID_SQRT
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!99)
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!99)))

(check-sat)
(exit)
