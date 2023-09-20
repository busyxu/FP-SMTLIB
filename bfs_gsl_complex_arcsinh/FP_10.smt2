(declare-fun x_ack!118 () (_ BitVec 64))
(declare-fun y_ack!117 () (_ BitVec 64))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) x_ack!118))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) y_ack!117)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #xbff0000000000000)
               ((_ to_fp 11 53) y_ack!117))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
