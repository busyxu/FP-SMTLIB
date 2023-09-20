(declare-fun c_ack!117 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) c_ack!117) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #xbff0000000000000)
               ((_ to_fp 11 53) c_ack!117))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
