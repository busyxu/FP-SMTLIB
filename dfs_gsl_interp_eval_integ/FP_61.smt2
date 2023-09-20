(declare-fun x1_ack!3280 () (_ BitVec 64))
(declare-fun x0_ack!3284 () (_ BitVec 64))
(declare-fun x2_ack!3281 () (_ BitVec 64))
(declare-fun b_ack!3283 () (_ BitVec 64))
(declare-fun a_ack!3282 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3284) ((_ to_fp 11 53) x1_ack!3280)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3280) ((_ to_fp 11 53) x2_ack!3281)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3280)
                       ((_ to_fp 11 53) x0_ack!3284))
               ((_ to_fp 11 53) x0_ack!3284))
       ((_ to_fp 11 53) x1_ack!3280)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3280)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3280)
                       ((_ to_fp 11 53) x0_ack!3284)))
       ((_ to_fp 11 53) x0_ack!3284)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3281)
                       ((_ to_fp 11 53) x1_ack!3280))
               ((_ to_fp 11 53) x1_ack!3280))
       ((_ to_fp 11 53) x2_ack!3281)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3281)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3281)
                       ((_ to_fp 11 53) x1_ack!3280)))
       ((_ to_fp 11 53) x1_ack!3280)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3280)
                    ((_ to_fp 11 53) x0_ack!3284))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3281)
                    ((_ to_fp 11 53) x1_ack!3280))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3282) ((_ to_fp 11 53) b_ack!3283))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3282) ((_ to_fp 11 53) x0_ack!3284))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3283) ((_ to_fp 11 53) x2_ack!3281))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3282) ((_ to_fp 11 53) b_ack!3283))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3282) ((_ to_fp 11 53) x0_ack!3284))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3282) ((_ to_fp 11 53) x1_ack!3280))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3283) ((_ to_fp 11 53) x0_ack!3284))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3283) ((_ to_fp 11 53) x1_ack!3280))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3280)
                    ((_ to_fp 11 53) x0_ack!3284))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
