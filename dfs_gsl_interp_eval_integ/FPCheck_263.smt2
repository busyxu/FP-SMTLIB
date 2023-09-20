(declare-fun x1_ack!3121 () (_ BitVec 64))
(declare-fun x0_ack!3127 () (_ BitVec 64))
(declare-fun x2_ack!3122 () (_ BitVec 64))
(declare-fun b_ack!3126 () (_ BitVec 64))
(declare-fun a_ack!3125 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3123 () (_ BitVec 64))
(declare-fun y1_ack!3124 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3127) ((_ to_fp 11 53) x1_ack!3121)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3121) ((_ to_fp 11 53) x2_ack!3122)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3121)
                       ((_ to_fp 11 53) x0_ack!3127))
               ((_ to_fp 11 53) x0_ack!3127))
       ((_ to_fp 11 53) x1_ack!3121)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3121)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3121)
                       ((_ to_fp 11 53) x0_ack!3127)))
       ((_ to_fp 11 53) x0_ack!3127)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3122)
                       ((_ to_fp 11 53) x1_ack!3121))
               ((_ to_fp 11 53) x1_ack!3121))
       ((_ to_fp 11 53) x2_ack!3122)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3122)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3122)
                       ((_ to_fp 11 53) x1_ack!3121)))
       ((_ to_fp 11 53) x1_ack!3121)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3121)
                    ((_ to_fp 11 53) x0_ack!3127))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3122)
                    ((_ to_fp 11 53) x1_ack!3121))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3125) ((_ to_fp 11 53) b_ack!3126))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3125) ((_ to_fp 11 53) x0_ack!3127))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3126) ((_ to_fp 11 53) x2_ack!3122))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3125) ((_ to_fp 11 53) b_ack!3126))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3125) ((_ to_fp 11 53) x0_ack!3127))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3125) ((_ to_fp 11 53) x1_ack!3121))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3126) ((_ to_fp 11 53) x0_ack!3127))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3126) ((_ to_fp 11 53) x1_ack!3121))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3121)
                    ((_ to_fp 11 53) x0_ack!3127))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!3124)
          ((_ to_fp 11 53) y0_ack!3123))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!3121)
          ((_ to_fp 11 53) x0_ack!3127))))

(check-sat)
(exit)
