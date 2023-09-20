(declare-fun a_ack!534 () (_ BitVec 64))
(declare-fun b_ack!533 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!534) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!533) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!533) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!533) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!533)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!534)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!534) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!534) ((_ to_fp 11 53) b_ack!533)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!534)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fc999999999999a)
                    ((_ to_fp 11 53) b_ack!533)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!534) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!533)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!534))))

(check-sat)
(exit)
