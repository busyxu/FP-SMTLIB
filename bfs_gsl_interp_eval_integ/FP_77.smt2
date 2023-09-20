(declare-fun x1_ack!4072 () (_ BitVec 64))
(declare-fun x0_ack!4076 () (_ BitVec 64))
(declare-fun x2_ack!4073 () (_ BitVec 64))
(declare-fun b_ack!4075 () (_ BitVec 64))
(declare-fun a_ack!4074 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4076) ((_ to_fp 11 53) x1_ack!4072)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4072) ((_ to_fp 11 53) x2_ack!4073)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4072)
                       ((_ to_fp 11 53) x0_ack!4076))
               ((_ to_fp 11 53) x0_ack!4076))
       ((_ to_fp 11 53) x1_ack!4072)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4072)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4072)
                       ((_ to_fp 11 53) x0_ack!4076)))
       ((_ to_fp 11 53) x0_ack!4076)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4073)
                       ((_ to_fp 11 53) x1_ack!4072))
               ((_ to_fp 11 53) x1_ack!4072))
       ((_ to_fp 11 53) x2_ack!4073)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4073)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4073)
                       ((_ to_fp 11 53) x1_ack!4072)))
       ((_ to_fp 11 53) x1_ack!4072)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4072)
                    ((_ to_fp 11 53) x0_ack!4076))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4073)
                    ((_ to_fp 11 53) x1_ack!4072))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4074) ((_ to_fp 11 53) b_ack!4075))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4074) ((_ to_fp 11 53) x0_ack!4076))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4075) ((_ to_fp 11 53) x2_ack!4073))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4074) ((_ to_fp 11 53) b_ack!4075))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4074) ((_ to_fp 11 53) x0_ack!4076))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4074) ((_ to_fp 11 53) x1_ack!4072))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4075) ((_ to_fp 11 53) x0_ack!4076))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4075) ((_ to_fp 11 53) x1_ack!4072))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4072)
                    ((_ to_fp 11 53) x0_ack!4076))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
