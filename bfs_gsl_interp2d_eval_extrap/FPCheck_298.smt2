(declare-fun x1_ack!3121 () (_ BitVec 64))
(declare-fun x0_ack!3126 () (_ BitVec 64))
(declare-fun y0_ack!3122 () (_ BitVec 64))
(declare-fun x_ack!3124 () (_ BitVec 64))
(declare-fun y_ack!3125 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z2_ack!3123 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3126) ((_ to_fp 11 53) x1_ack!3121))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3122) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3124) ((_ to_fp 11 53) x0_ack!3126))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3124) ((_ to_fp 11 53) x1_ack!3121))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3125) ((_ to_fp 11 53) y0_ack!3122))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3125) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3121)
                       ((_ to_fp 11 53) x0_ack!3126))
               ((_ to_fp 11 53) x0_ack!3126))
       ((_ to_fp 11 53) x1_ack!3121)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3121)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3121)
                       ((_ to_fp 11 53) x0_ack!3126)))
       ((_ to_fp 11 53) x0_ack!3126)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3122))
               ((_ to_fp 11 53) y0_ack!3122))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3122)))
       ((_ to_fp 11 53) y0_ack!3122)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3124)
                                   ((_ to_fp 11 53) x0_ack!3126))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3121)
                                   ((_ to_fp 11 53) x0_ack!3126)))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3125)
                                   ((_ to_fp 11 53) y0_ack!3122))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3122))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 z2_ack!3123)))

(check-sat)
(exit)
