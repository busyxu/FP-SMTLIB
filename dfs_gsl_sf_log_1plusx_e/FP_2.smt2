(declare-fun a_ack!28 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!28))
            ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!28)) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!28)
                       ((_ to_fp 11 53) #x4000000000000000))
               ((_ to_fp 11 53) a_ack!28))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!28)
                       ((_ to_fp 11 53) #x4000000000000000))
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) a_ack!28)))

(check-sat)
(exit)
