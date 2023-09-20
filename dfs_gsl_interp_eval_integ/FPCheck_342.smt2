(declare-fun x1_ack!4135 () (_ BitVec 64))
(declare-fun x0_ack!4139 () (_ BitVec 64))
(declare-fun x2_ack!4136 () (_ BitVec 64))
(declare-fun b_ack!4138 () (_ BitVec 64))
(declare-fun a_ack!4137 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4139) ((_ to_fp 11 53) x1_ack!4135)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4135) ((_ to_fp 11 53) x2_ack!4136)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4135)
                       ((_ to_fp 11 53) x0_ack!4139))
               ((_ to_fp 11 53) x0_ack!4139))
       ((_ to_fp 11 53) x1_ack!4135)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4135)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4135)
                       ((_ to_fp 11 53) x0_ack!4139)))
       ((_ to_fp 11 53) x0_ack!4139)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4136)
                       ((_ to_fp 11 53) x1_ack!4135))
               ((_ to_fp 11 53) x1_ack!4135))
       ((_ to_fp 11 53) x2_ack!4136)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4136)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4136)
                       ((_ to_fp 11 53) x1_ack!4135)))
       ((_ to_fp 11 53) x1_ack!4135)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4135)
                    ((_ to_fp 11 53) x0_ack!4139))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4136)
                    ((_ to_fp 11 53) x1_ack!4135))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4137) ((_ to_fp 11 53) b_ack!4138))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4137) ((_ to_fp 11 53) x0_ack!4139))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4138) ((_ to_fp 11 53) x2_ack!4136))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4137) ((_ to_fp 11 53) b_ack!4138))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4137) ((_ to_fp 11 53) x0_ack!4139))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4137) ((_ to_fp 11 53) x1_ack!4135))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4138) ((_ to_fp 11 53) x0_ack!4139))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4138) ((_ to_fp 11 53) x1_ack!4135))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4135)
                    ((_ to_fp 11 53) x0_ack!4139))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!4138 a_ack!4137))

(check-sat)
(exit)
