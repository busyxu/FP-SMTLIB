(declare-fun b_ack!175 () (_ BitVec 64))
(declare-fun alpha_ack!176 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!175) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) alpha_ack!176)
             ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) alpha_ack!176)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3fe0000000000000)))

(check-sat)
(exit)
