(declare-fun x1_ack!574 () (_ BitVec 64))
(declare-fun x0_ack!581 () (_ BitVec 64))
(declare-fun x2_ack!575 () (_ BitVec 64))
(declare-fun b_ack!580 () (_ BitVec 64))
(declare-fun a_ack!579 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!576 () (_ BitVec 64))
(declare-fun y1_ack!577 () (_ BitVec 64))
(declare-fun y2_ack!578 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!581) ((_ to_fp 11 53) x1_ack!574)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!574) ((_ to_fp 11 53) x2_ack!575)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!574)
                       ((_ to_fp 11 53) x0_ack!581))
               ((_ to_fp 11 53) x0_ack!581))
       ((_ to_fp 11 53) x1_ack!574)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!574)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!574)
                       ((_ to_fp 11 53) x0_ack!581)))
       ((_ to_fp 11 53) x0_ack!581)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!575)
                       ((_ to_fp 11 53) x1_ack!574))
               ((_ to_fp 11 53) x1_ack!574))
       ((_ to_fp 11 53) x2_ack!575)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!575)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!575)
                       ((_ to_fp 11 53) x1_ack!574)))
       ((_ to_fp 11 53) x1_ack!574)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!574)
                    ((_ to_fp 11 53) x0_ack!581))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!575)
                    ((_ to_fp 11 53) x1_ack!574))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!579) ((_ to_fp 11 53) b_ack!580))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!579) ((_ to_fp 11 53) x0_ack!581))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!580) ((_ to_fp 11 53) x2_ack!575))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!579) ((_ to_fp 11 53) b_ack!580))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!579) ((_ to_fp 11 53) x0_ack!581))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!579) ((_ to_fp 11 53) x1_ack!574))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!580) ((_ to_fp 11 53) x0_ack!581)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!574)
                    ((_ to_fp 11 53) x0_ack!581))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!578)
                           ((_ to_fp 11 53) y1_ack!577))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!575)
                                   ((_ to_fp 11 53) x1_ack!574)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!577)
                           ((_ to_fp 11 53) y0_ack!576))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!574)
                                   ((_ to_fp 11 53) x0_ack!581)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!575)
                                   ((_ to_fp 11 53) x1_ack!574))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!574)
                                   ((_ to_fp 11 53) x0_ack!581))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
