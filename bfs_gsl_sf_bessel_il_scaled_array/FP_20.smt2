(declare-fun b_ack!115 () (_ BitVec 64))
(declare-fun a_ack!116 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!115) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!115) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!116) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!115) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!116)))
(assert (not (= #x00000000 a_ack!116)))
(assert (not (= #x00000001 a_ack!116)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!115))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!115)
                       ((_ to_fp 11 53) b_ack!115))
               ((_ to_fp 11 53) b_ack!115))
       ((_ to_fp 11 53) b_ack!115)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!115))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!115)
                       ((_ to_fp 11 53) b_ack!115))
               ((_ to_fp 11 53) b_ack!115))
       ((_ to_fp 11 53) b_ack!115)))

(check-sat)
(exit)
