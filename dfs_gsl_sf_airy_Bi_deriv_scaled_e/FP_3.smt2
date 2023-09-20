(declare-fun a_ack!24 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!24) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!24) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!24) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!24) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!24))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!24)
                       ((_ to_fp 11 53) #x5fe6a09e667f3bcd))
               ((_ to_fp 11 53) a_ack!24))
       ((_ to_fp 11 53) #x5fe6a09e667f3bcd)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!24)
                       ((_ to_fp 11 53) #x5fe6a09e667f3bcd))
               ((_ to_fp 11 53) #x5fe6a09e667f3bcd))
       ((_ to_fp 11 53) a_ack!24)))

(check-sat)
(exit)
