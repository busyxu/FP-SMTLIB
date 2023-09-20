(declare-fun x1_ack!3135 () (_ BitVec 64))
(declare-fun x0_ack!3141 () (_ BitVec 64))
(declare-fun x2_ack!3136 () (_ BitVec 64))
(declare-fun b_ack!3140 () (_ BitVec 64))
(declare-fun a_ack!3139 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3137 () (_ BitVec 64))
(declare-fun y1_ack!3138 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3141) ((_ to_fp 11 53) x1_ack!3135)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3135) ((_ to_fp 11 53) x2_ack!3136)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3135)
                       ((_ to_fp 11 53) x0_ack!3141))
               ((_ to_fp 11 53) x0_ack!3141))
       ((_ to_fp 11 53) x1_ack!3135)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3135)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3135)
                       ((_ to_fp 11 53) x0_ack!3141)))
       ((_ to_fp 11 53) x0_ack!3141)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3136)
                       ((_ to_fp 11 53) x1_ack!3135))
               ((_ to_fp 11 53) x1_ack!3135))
       ((_ to_fp 11 53) x2_ack!3136)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3136)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3136)
                       ((_ to_fp 11 53) x1_ack!3135)))
       ((_ to_fp 11 53) x1_ack!3135)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3135)
                    ((_ to_fp 11 53) x0_ack!3141))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3136)
                    ((_ to_fp 11 53) x1_ack!3135))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3139) ((_ to_fp 11 53) b_ack!3140))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3139) ((_ to_fp 11 53) x0_ack!3141))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3140) ((_ to_fp 11 53) x2_ack!3136))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3139) ((_ to_fp 11 53) b_ack!3140))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3139) ((_ to_fp 11 53) x0_ack!3141))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3139) ((_ to_fp 11 53) x1_ack!3135))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3140) ((_ to_fp 11 53) x0_ack!3141))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3140) ((_ to_fp 11 53) x1_ack!3135))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3135)
                    ((_ to_fp 11 53) x0_ack!3141))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!3138)
          ((_ to_fp 11 53) y0_ack!3137))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!3135)
          ((_ to_fp 11 53) x0_ack!3141))))

(check-sat)
(exit)
