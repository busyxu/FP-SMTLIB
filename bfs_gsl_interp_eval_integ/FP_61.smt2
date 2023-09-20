(declare-fun x1_ack!3200 () (_ BitVec 64))
(declare-fun x0_ack!3204 () (_ BitVec 64))
(declare-fun x2_ack!3201 () (_ BitVec 64))
(declare-fun b_ack!3203 () (_ BitVec 64))
(declare-fun a_ack!3202 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3204) ((_ to_fp 11 53) x1_ack!3200)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3200) ((_ to_fp 11 53) x2_ack!3201)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3200)
                       ((_ to_fp 11 53) x0_ack!3204))
               ((_ to_fp 11 53) x0_ack!3204))
       ((_ to_fp 11 53) x1_ack!3200)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3200)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3200)
                       ((_ to_fp 11 53) x0_ack!3204)))
       ((_ to_fp 11 53) x0_ack!3204)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3201)
                       ((_ to_fp 11 53) x1_ack!3200))
               ((_ to_fp 11 53) x1_ack!3200))
       ((_ to_fp 11 53) x2_ack!3201)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3201)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3201)
                       ((_ to_fp 11 53) x1_ack!3200)))
       ((_ to_fp 11 53) x1_ack!3200)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3200)
                    ((_ to_fp 11 53) x0_ack!3204))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3201)
                    ((_ to_fp 11 53) x1_ack!3200))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3202) ((_ to_fp 11 53) b_ack!3203))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3202) ((_ to_fp 11 53) x0_ack!3204))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3203) ((_ to_fp 11 53) x2_ack!3201))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3202) ((_ to_fp 11 53) b_ack!3203))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3202) ((_ to_fp 11 53) x0_ack!3204))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3202) ((_ to_fp 11 53) x1_ack!3200)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3200) ((_ to_fp 11 53) a_ack!3202))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3203) ((_ to_fp 11 53) x1_ack!3200))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3203) ((_ to_fp 11 53) x2_ack!3201))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3201)
                    ((_ to_fp 11 53) x1_ack!3200))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
