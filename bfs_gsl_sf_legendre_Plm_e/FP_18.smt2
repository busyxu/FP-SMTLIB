(declare-fun b_ack!342 () (_ BitVec 32))
(declare-fun a_ack!343 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!343 b_ack!342))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvsub a_ack!343 b_ack!342))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!343 b_ack!342))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
