(declare-fun x1_ack!2604 () (_ BitVec 64))
(declare-fun x0_ack!2611 () (_ BitVec 64))
(declare-fun x2_ack!2605 () (_ BitVec 64))
(declare-fun b_ack!2610 () (_ BitVec 64))
(declare-fun a_ack!2609 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!2606 () (_ BitVec 64))
(declare-fun y1_ack!2607 () (_ BitVec 64))
(declare-fun y2_ack!2608 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2611) ((_ to_fp 11 53) x1_ack!2604)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2604) ((_ to_fp 11 53) x2_ack!2605)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2604)
                       ((_ to_fp 11 53) x0_ack!2611))
               ((_ to_fp 11 53) x0_ack!2611))
       ((_ to_fp 11 53) x1_ack!2604)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2604)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2604)
                       ((_ to_fp 11 53) x0_ack!2611)))
       ((_ to_fp 11 53) x0_ack!2611)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2605)
                       ((_ to_fp 11 53) x1_ack!2604))
               ((_ to_fp 11 53) x1_ack!2604))
       ((_ to_fp 11 53) x2_ack!2605)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2605)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2605)
                       ((_ to_fp 11 53) x1_ack!2604)))
       ((_ to_fp 11 53) x1_ack!2604)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2604)
                    ((_ to_fp 11 53) x0_ack!2611))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2605)
                    ((_ to_fp 11 53) x1_ack!2604))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2609) ((_ to_fp 11 53) b_ack!2610))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2609) ((_ to_fp 11 53) x0_ack!2611))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2610) ((_ to_fp 11 53) x2_ack!2605))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2609) ((_ to_fp 11 53) b_ack!2610))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2609) ((_ to_fp 11 53) x0_ack!2611))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2609) ((_ to_fp 11 53) x1_ack!2604))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2610) ((_ to_fp 11 53) x0_ack!2611))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2610) ((_ to_fp 11 53) x1_ack!2604)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2604) ((_ to_fp 11 53) b_ack!2610))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2604)
                    ((_ to_fp 11 53) x0_ack!2611))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2605)
                    ((_ to_fp 11 53) x1_ack!2604))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2608)
                           ((_ to_fp 11 53) y1_ack!2607))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2605)
                                   ((_ to_fp 11 53) x1_ack!2604)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2607)
                           ((_ to_fp 11 53) y0_ack!2606))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2604)
                                   ((_ to_fp 11 53) x0_ack!2611)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2605)
                                   ((_ to_fp 11 53) x1_ack!2604))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2604)
                                   ((_ to_fp 11 53) x0_ack!2611))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2605)
                                   ((_ to_fp 11 53) x1_ack!2604))))))
  (FPCHECK_FMUL_OVERFLOW #x3fd0000000000000 a!5)))))

(check-sat)
(exit)
