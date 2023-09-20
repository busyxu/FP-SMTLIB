(declare-fun a_ack!4546 () (_ BitVec 32))
(declare-fun b_ack!4544 () (_ BitVec 32))
(declare-fun c_ack!4545 () (_ BitVec 64))
(assert (not (bvslt a_ack!4546 #x00000000)))
(assert (not (bvslt b_ack!4544 a_ack!4546)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4545) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!4544)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4545) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4545) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4545) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4545))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4545)
                       ((_ to_fp 11 53) c_ack!4545))
               ((_ to_fp 11 53) c_ack!4545))
       ((_ to_fp 11 53) c_ack!4545)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4545))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4545)
                       ((_ to_fp 11 53) c_ack!4545))
               ((_ to_fp 11 53) c_ack!4545))
       ((_ to_fp 11 53) c_ack!4545)))

(check-sat)
(exit)
