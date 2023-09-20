(declare-fun b_ack!257 () (_ BitVec 32))
(declare-fun a_ack!258 () (_ BitVec 32))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!258 b_ack!257))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvsub a_ack!258 b_ack!257))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!258 b_ack!257))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FINVALID_LOG
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd a_ack!258 b_ack!257))
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd a_ack!258 b_ack!257))))

(check-sat)
(exit)
