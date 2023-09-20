(declare-fun b_ack!141 () (_ BitVec 64))
(declare-fun a_ack!142 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!141) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!141) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!142) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!141) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!142)))
(assert (not (= #x00000000 a_ack!142)))
(assert (not (= #x00000001 a_ack!142)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!141))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!141)
                       ((_ to_fp 11 53) b_ack!141))
               ((_ to_fp 11 53) b_ack!141))
       ((_ to_fp 11 53) b_ack!141)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!141))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!141)
                       ((_ to_fp 11 53) b_ack!141))
               ((_ to_fp 11 53) b_ack!141))
       ((_ to_fp 11 53) b_ack!141)))

(check-sat)
(exit)
