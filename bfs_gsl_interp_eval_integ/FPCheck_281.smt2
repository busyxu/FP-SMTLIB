(declare-fun x1_ack!3425 () (_ BitVec 64))
(declare-fun x0_ack!3432 () (_ BitVec 64))
(declare-fun x2_ack!3426 () (_ BitVec 64))
(declare-fun b_ack!3431 () (_ BitVec 64))
(declare-fun a_ack!3430 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!3427 () (_ BitVec 64))
(declare-fun y1_ack!3428 () (_ BitVec 64))
(declare-fun y2_ack!3429 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3432) ((_ to_fp 11 53) x1_ack!3425)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3425) ((_ to_fp 11 53) x2_ack!3426)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3425)
                       ((_ to_fp 11 53) x0_ack!3432))
               ((_ to_fp 11 53) x0_ack!3432))
       ((_ to_fp 11 53) x1_ack!3425)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3425)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3425)
                       ((_ to_fp 11 53) x0_ack!3432)))
       ((_ to_fp 11 53) x0_ack!3432)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3426)
                       ((_ to_fp 11 53) x1_ack!3425))
               ((_ to_fp 11 53) x1_ack!3425))
       ((_ to_fp 11 53) x2_ack!3426)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3426)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3426)
                       ((_ to_fp 11 53) x1_ack!3425)))
       ((_ to_fp 11 53) x1_ack!3425)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3425)
                    ((_ to_fp 11 53) x0_ack!3432))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3426)
                    ((_ to_fp 11 53) x1_ack!3425))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3430) ((_ to_fp 11 53) b_ack!3431))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3430) ((_ to_fp 11 53) x0_ack!3432))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3431) ((_ to_fp 11 53) x2_ack!3426))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3430) ((_ to_fp 11 53) b_ack!3431))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3430) ((_ to_fp 11 53) x0_ack!3432))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3430) ((_ to_fp 11 53) x1_ack!3425)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3425) ((_ to_fp 11 53) a_ack!3430))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3431) ((_ to_fp 11 53) x1_ack!3425))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3431) ((_ to_fp 11 53) x2_ack!3426)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3426)
                    ((_ to_fp 11 53) x1_ack!3425))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3429)
                           ((_ to_fp 11 53) y1_ack!3428))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3426)
                                   ((_ to_fp 11 53) x1_ack!3425)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3428)
                           ((_ to_fp 11 53) y0_ack!3427))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3425)
                                   ((_ to_fp 11 53) x0_ack!3432)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3426)
                                   ((_ to_fp 11 53) x1_ack!3425))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3425)
                                   ((_ to_fp 11 53) x0_ack!3432))))))
  (FPCHECK_FMUL_ACCURACY
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
