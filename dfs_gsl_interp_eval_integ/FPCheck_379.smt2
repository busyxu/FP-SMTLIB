(declare-fun x1_ack!4622 () (_ BitVec 64))
(declare-fun x0_ack!4629 () (_ BitVec 64))
(declare-fun x2_ack!4623 () (_ BitVec 64))
(declare-fun b_ack!4628 () (_ BitVec 64))
(declare-fun a_ack!4627 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4624 () (_ BitVec 64))
(declare-fun y1_ack!4625 () (_ BitVec 64))
(declare-fun y2_ack!4626 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4629) ((_ to_fp 11 53) x1_ack!4622)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4622) ((_ to_fp 11 53) x2_ack!4623)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4622)
                       ((_ to_fp 11 53) x0_ack!4629))
               ((_ to_fp 11 53) x0_ack!4629))
       ((_ to_fp 11 53) x1_ack!4622)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4622)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4622)
                       ((_ to_fp 11 53) x0_ack!4629)))
       ((_ to_fp 11 53) x0_ack!4629)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4623)
                       ((_ to_fp 11 53) x1_ack!4622))
               ((_ to_fp 11 53) x1_ack!4622))
       ((_ to_fp 11 53) x2_ack!4623)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4623)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4623)
                       ((_ to_fp 11 53) x1_ack!4622)))
       ((_ to_fp 11 53) x1_ack!4622)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4622)
                    ((_ to_fp 11 53) x0_ack!4629))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4623)
                    ((_ to_fp 11 53) x1_ack!4622))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4627) ((_ to_fp 11 53) b_ack!4628))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4627) ((_ to_fp 11 53) x0_ack!4629))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4628) ((_ to_fp 11 53) x2_ack!4623))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4627) ((_ to_fp 11 53) b_ack!4628))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4627) ((_ to_fp 11 53) x0_ack!4629))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4627) ((_ to_fp 11 53) x1_ack!4622)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4622) ((_ to_fp 11 53) a_ack!4627))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4628) ((_ to_fp 11 53) x1_ack!4622))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4628) ((_ to_fp 11 53) x2_ack!4623)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4623)
                    ((_ to_fp 11 53) x1_ack!4622))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4626)
                           ((_ to_fp 11 53) y1_ack!4625))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4623)
                                   ((_ to_fp 11 53) x1_ack!4622)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4625)
                           ((_ to_fp 11 53) y0_ack!4624))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4622)
                                   ((_ to_fp 11 53) x0_ack!4629)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4623)
                                   ((_ to_fp 11 53) x1_ack!4622))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4622)
                                   ((_ to_fp 11 53) x0_ack!4629))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x2_ack!4623)
            ((_ to_fp 11 53) x1_ack!4622))
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!4)))))

(check-sat)
(exit)
