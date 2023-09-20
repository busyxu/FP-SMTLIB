(declare-fun a_ack!12 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!12) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!12) ((_ to_fp 11 53) #x2aa965fea53d6e98))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) a_ack!12))
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) a_ack!12)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!12))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) a_ack!12))
               ((_ to_fp 11 53) a_ack!12))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               ((_ to_fp 11 53) a_ack!12))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
