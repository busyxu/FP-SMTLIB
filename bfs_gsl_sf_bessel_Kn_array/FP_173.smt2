(declare-fun a_ack!4618 () (_ BitVec 32))
(declare-fun b_ack!4616 () (_ BitVec 32))
(declare-fun c_ack!4617 () (_ BitVec 64))
(assert (not (bvslt a_ack!4618 #x00000000)))
(assert (not (bvslt b_ack!4616 a_ack!4618)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4617) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!4616))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4617) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4617) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4617))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4617)
                       ((_ to_fp 11 53) c_ack!4617))
               ((_ to_fp 11 53) c_ack!4617))
       ((_ to_fp 11 53) c_ack!4617)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4617))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4617)
                       ((_ to_fp 11 53) c_ack!4617))
               ((_ to_fp 11 53) c_ack!4617))
       ((_ to_fp 11 53) c_ack!4617)))

(check-sat)
(exit)
