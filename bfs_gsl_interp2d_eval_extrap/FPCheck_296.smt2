(declare-fun x1_ack!3094 () (_ BitVec 64))
(declare-fun x0_ack!3098 () (_ BitVec 64))
(declare-fun y0_ack!3095 () (_ BitVec 64))
(declare-fun x_ack!3096 () (_ BitVec 64))
(declare-fun y_ack!3097 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3098) ((_ to_fp 11 53) x1_ack!3094))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3095) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3096) ((_ to_fp 11 53) x0_ack!3098))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3096) ((_ to_fp 11 53) x1_ack!3094))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3097) ((_ to_fp 11 53) y0_ack!3095))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3097) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3094)
                       ((_ to_fp 11 53) x0_ack!3098))
               ((_ to_fp 11 53) x0_ack!3098))
       ((_ to_fp 11 53) x1_ack!3094)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3094)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3094)
                       ((_ to_fp 11 53) x0_ack!3098)))
       ((_ to_fp 11 53) x0_ack!3098)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3095))
               ((_ to_fp 11 53) y0_ack!3095))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3095)))
       ((_ to_fp 11 53) y0_ack!3095)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!3096)
                  ((_ to_fp 11 53) x0_ack!3098))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!3094)
                  ((_ to_fp 11 53) x0_ack!3098)))
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!3097)
                  ((_ to_fp 11 53) y0_ack!3095))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!3095)))))

(check-sat)
(exit)
