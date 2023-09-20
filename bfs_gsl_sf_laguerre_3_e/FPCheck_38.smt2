(declare-fun a_ack!77 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!77) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!77) ((_ to_fp 11 53) #xc008000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               ((_ to_fp 11 53) a_ack!77))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
