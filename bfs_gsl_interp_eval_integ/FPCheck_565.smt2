(declare-fun x1_ack!7113 () (_ BitVec 64))
(declare-fun x0_ack!7120 () (_ BitVec 64))
(declare-fun x2_ack!7114 () (_ BitVec 64))
(declare-fun b_ack!7119 () (_ BitVec 64))
(declare-fun a_ack!7118 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!7115 () (_ BitVec 64))
(declare-fun y1_ack!7116 () (_ BitVec 64))
(declare-fun y2_ack!7117 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7120) ((_ to_fp 11 53) x1_ack!7113)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7113) ((_ to_fp 11 53) x2_ack!7114)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7113)
                       ((_ to_fp 11 53) x0_ack!7120))
               ((_ to_fp 11 53) x0_ack!7120))
       ((_ to_fp 11 53) x1_ack!7113)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7113)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7113)
                       ((_ to_fp 11 53) x0_ack!7120)))
       ((_ to_fp 11 53) x0_ack!7120)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7114)
                       ((_ to_fp 11 53) x1_ack!7113))
               ((_ to_fp 11 53) x1_ack!7113))
       ((_ to_fp 11 53) x2_ack!7114)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7114)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7114)
                       ((_ to_fp 11 53) x1_ack!7113)))
       ((_ to_fp 11 53) x1_ack!7113)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7113)
                    ((_ to_fp 11 53) x0_ack!7120))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7114)
                    ((_ to_fp 11 53) x1_ack!7113))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7118) ((_ to_fp 11 53) b_ack!7119))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7118) ((_ to_fp 11 53) x0_ack!7120))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7119) ((_ to_fp 11 53) x2_ack!7114))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7118) ((_ to_fp 11 53) b_ack!7119))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7118) ((_ to_fp 11 53) x0_ack!7120))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7118) ((_ to_fp 11 53) x1_ack!7113))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7119) ((_ to_fp 11 53) x0_ack!7120))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7119) ((_ to_fp 11 53) x1_ack!7113)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7113) ((_ to_fp 11 53) b_ack!7119))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7113)
                    ((_ to_fp 11 53) x0_ack!7120))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7114)
                    ((_ to_fp 11 53) x1_ack!7113))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7117)
                           ((_ to_fp 11 53) y1_ack!7116))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7114)
                                   ((_ to_fp 11 53) x1_ack!7113)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7116)
                           ((_ to_fp 11 53) y0_ack!7115))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7113)
                                   ((_ to_fp 11 53) x0_ack!7120)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7114)
                                   ((_ to_fp 11 53) x1_ack!7113))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7113)
                                   ((_ to_fp 11 53) x0_ack!7120))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7114)
                                   ((_ to_fp 11 53) x1_ack!7113))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!7117)
                                   ((_ to_fp 11 53) y1_ack!7116))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7114)
                                   ((_ to_fp 11 53) x1_ack!7113)))
                   a!5)))
  (FPCHECK_FMUL_OVERFLOW #x3fe0000000000000 a!6))))))

(check-sat)
(exit)
