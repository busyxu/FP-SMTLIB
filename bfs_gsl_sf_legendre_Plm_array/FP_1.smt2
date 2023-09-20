(declare-fun b_ack!86 () (_ BitVec 32))
(declare-fun a_ack!87 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!87 b_ack!86))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
