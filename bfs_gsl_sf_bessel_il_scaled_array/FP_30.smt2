(declare-fun b_ack!329 () (_ BitVec 64))
(declare-fun a_ack!330 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!329) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!329) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt (bvadd #x00000001 a_ack!330) #x00000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!329))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #xffffffff a_ack!330))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x8000000000000000)
               ((_ to_fp 11 53) b_ack!329))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
