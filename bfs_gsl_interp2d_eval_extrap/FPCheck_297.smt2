(declare-fun x1_ack!3109 () (_ BitVec 64))
(declare-fun x0_ack!3114 () (_ BitVec 64))
(declare-fun y0_ack!3110 () (_ BitVec 64))
(declare-fun x_ack!3112 () (_ BitVec 64))
(declare-fun y_ack!3113 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z2_ack!3111 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3114) ((_ to_fp 11 53) x1_ack!3109))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3110) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3112) ((_ to_fp 11 53) x0_ack!3114))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3112) ((_ to_fp 11 53) x1_ack!3109))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3113) ((_ to_fp 11 53) y0_ack!3110))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3113) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3109)
                       ((_ to_fp 11 53) x0_ack!3114))
               ((_ to_fp 11 53) x0_ack!3114))
       ((_ to_fp 11 53) x1_ack!3109)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3109)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3109)
                       ((_ to_fp 11 53) x0_ack!3114)))
       ((_ to_fp 11 53) x0_ack!3114)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3110))
               ((_ to_fp 11 53) y0_ack!3110))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3110)))
       ((_ to_fp 11 53) y0_ack!3110)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3112)
                                   ((_ to_fp 11 53) x0_ack!3114))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3109)
                                   ((_ to_fp 11 53) x0_ack!3114)))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3113)
                                   ((_ to_fp 11 53) y0_ack!3110))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3110))))))
  (FPCHECK_FMUL_OVERFLOW a!1 z2_ack!3111)))

(check-sat)
(exit)
