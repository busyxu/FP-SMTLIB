(declare-fun a_ack!11 () (_ BitVec 64))
(declare-fun b_ack!10 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!11)
                ((_ to_fp 11 53) b_ack!10))
        ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
