(declare-fun a_ack!11 () (_ BitVec 64))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!11)
                     ((_ to_fp 11 53) a_ack!11))
             ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
