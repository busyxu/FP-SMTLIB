(declare-fun x1_ack!4817 () (_ BitVec 64))
(declare-fun x0_ack!4821 () (_ BitVec 64))
(declare-fun x2_ack!4818 () (_ BitVec 64))
(declare-fun b_ack!4820 () (_ BitVec 64))
(declare-fun a_ack!4819 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4821) ((_ to_fp 11 53) x1_ack!4817)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4817) ((_ to_fp 11 53) x2_ack!4818)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4817)
                       ((_ to_fp 11 53) x0_ack!4821))
               ((_ to_fp 11 53) x0_ack!4821))
       ((_ to_fp 11 53) x1_ack!4817)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4817)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4817)
                       ((_ to_fp 11 53) x0_ack!4821)))
       ((_ to_fp 11 53) x0_ack!4821)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4818)
                       ((_ to_fp 11 53) x1_ack!4817))
               ((_ to_fp 11 53) x1_ack!4817))
       ((_ to_fp 11 53) x2_ack!4818)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4818)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4818)
                       ((_ to_fp 11 53) x1_ack!4817)))
       ((_ to_fp 11 53) x1_ack!4817)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4817)
                    ((_ to_fp 11 53) x0_ack!4821))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4818)
                    ((_ to_fp 11 53) x1_ack!4817))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4819) ((_ to_fp 11 53) b_ack!4820))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4819) ((_ to_fp 11 53) x0_ack!4821))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4820) ((_ to_fp 11 53) x2_ack!4818))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4819) ((_ to_fp 11 53) b_ack!4820))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4819) ((_ to_fp 11 53) x0_ack!4821))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4819) ((_ to_fp 11 53) x1_ack!4817))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4820) ((_ to_fp 11 53) x0_ack!4821))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4820) ((_ to_fp 11 53) x1_ack!4817))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4817)
                    ((_ to_fp 11 53) x0_ack!4821))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
