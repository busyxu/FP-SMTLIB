(declare-fun b_ack!185 () (_ BitVec 32))
(declare-fun a_ack!186 () (_ BitVec 32))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!186 b_ack!185))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvsub a_ack!186 b_ack!185))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!186 b_ack!185))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FINVALID_LOG
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd a_ack!186 b_ack!185))
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd a_ack!186 b_ack!185))))

(check-sat)
(exit)
