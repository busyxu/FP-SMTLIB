(declare-fun x_ack!12 () (_ BitVec 64))
(declare-fun nu_ack!11 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!12) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!12)
                    ((_ to_fp 11 53) #x4000000000000000))
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!11)
                    ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
