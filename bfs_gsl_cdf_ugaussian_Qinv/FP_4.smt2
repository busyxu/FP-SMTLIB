(declare-fun Q_ack!20 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) Q_ack!20) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) Q_ack!20) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) Q_ack!20)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x3fdb333333333333))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) Q_ack!20) ((_ to_fp 11 53) #x3fe0000000000000))))

(check-sat)
(exit)
