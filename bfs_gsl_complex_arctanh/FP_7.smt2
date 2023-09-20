(declare-fun y_ack!60 () (_ BitVec 64))
(declare-fun x_ack!61 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!60) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) x_ack!61))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
