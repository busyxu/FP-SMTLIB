(declare-fun x1_ack!3076 () (_ BitVec 64))
(declare-fun x0_ack!3080 () (_ BitVec 64))
(declare-fun x2_ack!3077 () (_ BitVec 64))
(declare-fun b_ack!3079 () (_ BitVec 64))
(declare-fun a_ack!3078 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3080) ((_ to_fp 11 53) x1_ack!3076)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3076) ((_ to_fp 11 53) x2_ack!3077)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3076)
                       ((_ to_fp 11 53) x0_ack!3080))
               ((_ to_fp 11 53) x0_ack!3080))
       ((_ to_fp 11 53) x1_ack!3076)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3076)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3076)
                       ((_ to_fp 11 53) x0_ack!3080)))
       ((_ to_fp 11 53) x0_ack!3080)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3077)
                       ((_ to_fp 11 53) x1_ack!3076))
               ((_ to_fp 11 53) x1_ack!3076))
       ((_ to_fp 11 53) x2_ack!3077)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3077)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3077)
                       ((_ to_fp 11 53) x1_ack!3076)))
       ((_ to_fp 11 53) x1_ack!3076)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3076)
                    ((_ to_fp 11 53) x0_ack!3080))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3077)
                    ((_ to_fp 11 53) x1_ack!3076))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3078) ((_ to_fp 11 53) b_ack!3079))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3078) ((_ to_fp 11 53) x0_ack!3080))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3079) ((_ to_fp 11 53) x2_ack!3077))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3078) ((_ to_fp 11 53) b_ack!3079))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3078) ((_ to_fp 11 53) x0_ack!3080))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3078) ((_ to_fp 11 53) x1_ack!3076))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3079) ((_ to_fp 11 53) x0_ack!3080))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3079) ((_ to_fp 11 53) x1_ack!3076))))

(check-sat)
(exit)
