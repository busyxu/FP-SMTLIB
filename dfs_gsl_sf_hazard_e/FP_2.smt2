(declare-fun a_ack!16 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!16) ((_ to_fp 11 53) #x4039000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!16))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!16)
                       ((_ to_fp 11 53) a_ack!16))
               ((_ to_fp 11 53) a_ack!16))
       ((_ to_fp 11 53) a_ack!16)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!16))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!16)
                       ((_ to_fp 11 53) a_ack!16))
               ((_ to_fp 11 53) a_ack!16))
       ((_ to_fp 11 53) a_ack!16)))

(check-sat)
(exit)
