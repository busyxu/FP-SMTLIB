(declare-fun a_ack!536 () (_ BitVec 64))
(declare-fun b_ack!535 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!535) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!535) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!535) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!535)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!536)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) b_ack!535)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!536)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc999999999999a)
                    ((_ to_fp 11 53) b_ack!535)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!536) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!535)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!536)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!535)
                       ((_ to_fp 11 53) a_ack!536))
               ((_ to_fp 11 53) a_ack!536))
       ((_ to_fp 11 53) b_ack!535)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!535)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!535)
                       ((_ to_fp 11 53) a_ack!536)))
       ((_ to_fp 11 53) a_ack!536)))

(check-sat)
(exit)
