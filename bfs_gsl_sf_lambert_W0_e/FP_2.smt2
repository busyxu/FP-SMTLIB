(declare-fun a_ack!15 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!15) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!15)
               ((_ to_fp 11 53) #x3fd78b56362cef38))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
