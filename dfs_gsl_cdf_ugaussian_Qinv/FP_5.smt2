(declare-fun Q_ack!22 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) Q_ack!22) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) Q_ack!22) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) Q_ack!22)
                        ((_ to_fp 11 53) #x3fe0000000000000)))
        ((_ to_fp 11 53) #x3fdb333333333333)))

(check-sat)
(exit)
