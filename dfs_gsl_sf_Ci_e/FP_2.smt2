(declare-fun a_ack!57 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!57) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!57) ((_ to_fp 11 53) #x4010000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!57))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!57)
                       ((_ to_fp 11 53) a_ack!57))
               ((_ to_fp 11 53) a_ack!57))
       ((_ to_fp 11 53) a_ack!57)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!57))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!57)
                       ((_ to_fp 11 53) a_ack!57))
               ((_ to_fp 11 53) a_ack!57))
       ((_ to_fp 11 53) a_ack!57)))

(check-sat)
(exit)
