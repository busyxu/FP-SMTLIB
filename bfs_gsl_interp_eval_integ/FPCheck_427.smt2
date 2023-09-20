(declare-fun x1_ack!5382 () (_ BitVec 64))
(declare-fun x0_ack!5389 () (_ BitVec 64))
(declare-fun x2_ack!5383 () (_ BitVec 64))
(declare-fun b_ack!5388 () (_ BitVec 64))
(declare-fun a_ack!5387 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!5384 () (_ BitVec 64))
(declare-fun y1_ack!5385 () (_ BitVec 64))
(declare-fun y2_ack!5386 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5389) ((_ to_fp 11 53) x1_ack!5382)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5382) ((_ to_fp 11 53) x2_ack!5383)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5382)
                       ((_ to_fp 11 53) x0_ack!5389))
               ((_ to_fp 11 53) x0_ack!5389))
       ((_ to_fp 11 53) x1_ack!5382)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5382)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5382)
                       ((_ to_fp 11 53) x0_ack!5389)))
       ((_ to_fp 11 53) x0_ack!5389)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5383)
                       ((_ to_fp 11 53) x1_ack!5382))
               ((_ to_fp 11 53) x1_ack!5382))
       ((_ to_fp 11 53) x2_ack!5383)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5383)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5383)
                       ((_ to_fp 11 53) x1_ack!5382)))
       ((_ to_fp 11 53) x1_ack!5382)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5382)
                    ((_ to_fp 11 53) x0_ack!5389))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5383)
                    ((_ to_fp 11 53) x1_ack!5382))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5387) ((_ to_fp 11 53) b_ack!5388))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5387) ((_ to_fp 11 53) x0_ack!5389))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5388) ((_ to_fp 11 53) x2_ack!5383))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5387) ((_ to_fp 11 53) b_ack!5388))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5387) ((_ to_fp 11 53) x0_ack!5389))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5387) ((_ to_fp 11 53) x1_ack!5382))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5388) ((_ to_fp 11 53) x0_ack!5389))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5388) ((_ to_fp 11 53) x1_ack!5382)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5382) ((_ to_fp 11 53) b_ack!5388))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5382)
                    ((_ to_fp 11 53) x0_ack!5389))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5386)
                           ((_ to_fp 11 53) y1_ack!5385))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5383)
                                   ((_ to_fp 11 53) x1_ack!5382)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5385)
                           ((_ to_fp 11 53) y0_ack!5384))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5382)
                                   ((_ to_fp 11 53) x0_ack!5389)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5383)
                                   ((_ to_fp 11 53) x1_ack!5382))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5382)
                                   ((_ to_fp 11 53) x0_ack!5389))))))
  (FPCHECK_FADD_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
