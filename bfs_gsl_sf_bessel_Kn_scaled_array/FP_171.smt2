(declare-fun a_ack!4588 () (_ BitVec 32))
(declare-fun b_ack!4586 () (_ BitVec 32))
(declare-fun c_ack!4587 () (_ BitVec 64))
(assert (not (bvslt a_ack!4588 #x00000000)))
(assert (not (bvslt b_ack!4586 a_ack!4588)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4587) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!4586))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4587) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4587) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4587))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4587)
                       ((_ to_fp 11 53) c_ack!4587))
               ((_ to_fp 11 53) c_ack!4587))
       ((_ to_fp 11 53) c_ack!4587)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4587))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4587)
                       ((_ to_fp 11 53) c_ack!4587))
               ((_ to_fp 11 53) c_ack!4587))
       ((_ to_fp 11 53) c_ack!4587)))

(check-sat)
(exit)
