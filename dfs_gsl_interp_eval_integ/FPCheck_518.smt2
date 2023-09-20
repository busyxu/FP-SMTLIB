(declare-fun x1_ack!6490 () (_ BitVec 64))
(declare-fun x0_ack!6497 () (_ BitVec 64))
(declare-fun x2_ack!6491 () (_ BitVec 64))
(declare-fun b_ack!6496 () (_ BitVec 64))
(declare-fun a_ack!6495 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6492 () (_ BitVec 64))
(declare-fun y1_ack!6493 () (_ BitVec 64))
(declare-fun y2_ack!6494 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6497) ((_ to_fp 11 53) x1_ack!6490)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6490) ((_ to_fp 11 53) x2_ack!6491)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6490)
                       ((_ to_fp 11 53) x0_ack!6497))
               ((_ to_fp 11 53) x0_ack!6497))
       ((_ to_fp 11 53) x1_ack!6490)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6490)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6490)
                       ((_ to_fp 11 53) x0_ack!6497)))
       ((_ to_fp 11 53) x0_ack!6497)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6491)
                       ((_ to_fp 11 53) x1_ack!6490))
               ((_ to_fp 11 53) x1_ack!6490))
       ((_ to_fp 11 53) x2_ack!6491)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6491)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6491)
                       ((_ to_fp 11 53) x1_ack!6490)))
       ((_ to_fp 11 53) x1_ack!6490)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6490)
                    ((_ to_fp 11 53) x0_ack!6497))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6491)
                    ((_ to_fp 11 53) x1_ack!6490))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6495) ((_ to_fp 11 53) b_ack!6496))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6495) ((_ to_fp 11 53) x0_ack!6497))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6496) ((_ to_fp 11 53) x2_ack!6491))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6495) ((_ to_fp 11 53) b_ack!6496))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6495) ((_ to_fp 11 53) x0_ack!6497))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6495) ((_ to_fp 11 53) x1_ack!6490)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6490) ((_ to_fp 11 53) a_ack!6495))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6496) ((_ to_fp 11 53) x1_ack!6490))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6496) ((_ to_fp 11 53) x2_ack!6491))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6491)
                    ((_ to_fp 11 53) x1_ack!6490))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6494)
                           ((_ to_fp 11 53) y1_ack!6493))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6491)
                                   ((_ to_fp 11 53) x1_ack!6490)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6493)
                           ((_ to_fp 11 53) y0_ack!6492))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6490)
                                   ((_ to_fp 11 53) x0_ack!6497)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6491)
                                   ((_ to_fp 11 53) x1_ack!6490))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6490)
                                   ((_ to_fp 11 53) x0_ack!6497))))))
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
                                   ((_ to_fp 11 53) x2_ack!6491)
                                   ((_ to_fp 11 53) x1_ack!6490))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!6494)
                                   ((_ to_fp 11 53) y1_ack!6493))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6491)
                                   ((_ to_fp 11 53) x1_ack!6490)))
                   a!5)))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!6)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6495)
                    ((_ to_fp 11 53) x1_ack!6490))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!6496)
                    ((_ to_fp 11 53) x1_ack!6490)))))))))

(check-sat)
(exit)
