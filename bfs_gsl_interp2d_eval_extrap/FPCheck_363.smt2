(declare-fun x1_ack!3847 () (_ BitVec 64))
(declare-fun x0_ack!3852 () (_ BitVec 64))
(declare-fun y0_ack!3848 () (_ BitVec 64))
(declare-fun x_ack!3850 () (_ BitVec 64))
(declare-fun y_ack!3851 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z3_ack!3849 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3852) ((_ to_fp 11 53) x1_ack!3847))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3848) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3850) ((_ to_fp 11 53) x0_ack!3852)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3851) ((_ to_fp 11 53) y0_ack!3848))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3851) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3847)
                       ((_ to_fp 11 53) x0_ack!3852))
               ((_ to_fp 11 53) x0_ack!3852))
       ((_ to_fp 11 53) x1_ack!3847)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3847)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3847)
                       ((_ to_fp 11 53) x0_ack!3852)))
       ((_ to_fp 11 53) x0_ack!3852)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3850)
                           ((_ to_fp 11 53) x0_ack!3852))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3847)
                           ((_ to_fp 11 53) x0_ack!3852)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3850)
                           ((_ to_fp 11 53) x0_ack!3852))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3847)
                           ((_ to_fp 11 53) x0_ack!3852)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3851)
                                   ((_ to_fp 11 53) y0_ack!3848))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3848))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3850)
                                   ((_ to_fp 11 53) x0_ack!3852))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3847)
                                   ((_ to_fp 11 53) x0_ack!3852)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY a!2 z3_ack!3849))))

(check-sat)
(exit)
