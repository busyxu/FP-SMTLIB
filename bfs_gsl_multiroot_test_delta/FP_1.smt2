(declare-fun x0_ack!75 () (_ BitVec 64))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3e50000000000000)
               (fp.abs ((_ to_fp 11 53) x0_ack!75)))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
