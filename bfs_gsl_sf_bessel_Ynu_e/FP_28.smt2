(declare-fun b_ack!535 () (_ BitVec 64))
(declare-fun a_ack!536 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!535) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!535) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!535))
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) a_ack!536))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!536))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!536)
                       ((_ to_fp 11 53) a_ack!536))
               ((_ to_fp 11 53) a_ack!536))
       ((_ to_fp 11 53) a_ack!536)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!536))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!536)
                       ((_ to_fp 11 53) a_ack!536))
               ((_ to_fp 11 53) a_ack!536))
       ((_ to_fp 11 53) a_ack!536)))

(check-sat)
(exit)
