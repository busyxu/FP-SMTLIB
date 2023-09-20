(declare-fun a_ack!101 () (_ BitVec 64))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!101))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!101))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) a_ack!101))
               (fp.abs ((_ to_fp 11 53) a_ack!101)))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
