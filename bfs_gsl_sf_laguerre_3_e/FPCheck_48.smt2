(declare-fun a_ack!98 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!98) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!98) ((_ to_fp 11 53) #xc008000000000000))))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4008000000000000)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4008000000000000)
                       ((_ to_fp 11 53) a_ack!98)))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
