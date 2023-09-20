(declare-fun a_ack!4597 () (_ BitVec 32))
(declare-fun b_ack!4595 () (_ BitVec 32))
(declare-fun c_ack!4596 () (_ BitVec 64))
(assert (not (bvslt a_ack!4597 #x00000000)))
(assert (not (bvslt b_ack!4595 a_ack!4597)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4596) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!4595))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4596) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4596) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4596))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4596)
                       ((_ to_fp 11 53) c_ack!4596))
               ((_ to_fp 11 53) c_ack!4596))
       ((_ to_fp 11 53) c_ack!4596)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4596))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4596)
                       ((_ to_fp 11 53) c_ack!4596))
               ((_ to_fp 11 53) c_ack!4596))
       ((_ to_fp 11 53) c_ack!4596)))

(check-sat)
(exit)
