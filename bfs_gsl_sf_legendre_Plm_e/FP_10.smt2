(declare-fun b_ack!173 () (_ BitVec 32))
(declare-fun a_ack!174 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!174 b_ack!173))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvsub a_ack!174 b_ack!173))
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
