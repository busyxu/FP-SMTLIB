(declare-fun x1_ack!6657 () (_ BitVec 64))
(declare-fun x0_ack!6664 () (_ BitVec 64))
(declare-fun x2_ack!6658 () (_ BitVec 64))
(declare-fun b_ack!6663 () (_ BitVec 64))
(declare-fun a_ack!6662 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!6659 () (_ BitVec 64))
(declare-fun y1_ack!6660 () (_ BitVec 64))
(declare-fun y2_ack!6661 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6664) ((_ to_fp 11 53) x1_ack!6657)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6657) ((_ to_fp 11 53) x2_ack!6658)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6657)
                       ((_ to_fp 11 53) x0_ack!6664))
               ((_ to_fp 11 53) x0_ack!6664))
       ((_ to_fp 11 53) x1_ack!6657)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6657)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6657)
                       ((_ to_fp 11 53) x0_ack!6664)))
       ((_ to_fp 11 53) x0_ack!6664)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6658)
                       ((_ to_fp 11 53) x1_ack!6657))
               ((_ to_fp 11 53) x1_ack!6657))
       ((_ to_fp 11 53) x2_ack!6658)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6658)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6658)
                       ((_ to_fp 11 53) x1_ack!6657)))
       ((_ to_fp 11 53) x1_ack!6657)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6657)
                    ((_ to_fp 11 53) x0_ack!6664))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6658)
                    ((_ to_fp 11 53) x1_ack!6657))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6662) ((_ to_fp 11 53) b_ack!6663))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6662) ((_ to_fp 11 53) x0_ack!6664))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6663) ((_ to_fp 11 53) x2_ack!6658))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6662) ((_ to_fp 11 53) b_ack!6663))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6662) ((_ to_fp 11 53) x0_ack!6664))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6662) ((_ to_fp 11 53) x1_ack!6657))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6663) ((_ to_fp 11 53) x0_ack!6664))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6663) ((_ to_fp 11 53) x1_ack!6657)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6657) ((_ to_fp 11 53) b_ack!6663))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6657)
                    ((_ to_fp 11 53) x0_ack!6664))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6658)
                    ((_ to_fp 11 53) x1_ack!6657))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6661)
                           ((_ to_fp 11 53) y1_ack!6660))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6658)
                                   ((_ to_fp 11 53) x1_ack!6657)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6660)
                           ((_ to_fp 11 53) y0_ack!6659))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6657)
                                   ((_ to_fp 11 53) x0_ack!6664)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6658)
                                   ((_ to_fp 11 53) x1_ack!6657))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6657)
                                   ((_ to_fp 11 53) x0_ack!6664))))))
  (FPCHECK_FMUL_OVERFLOW
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
