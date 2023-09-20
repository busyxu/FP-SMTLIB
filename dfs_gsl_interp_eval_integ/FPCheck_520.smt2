(declare-fun x1_ack!6527 () (_ BitVec 64))
(declare-fun x0_ack!6534 () (_ BitVec 64))
(declare-fun x2_ack!6528 () (_ BitVec 64))
(declare-fun b_ack!6533 () (_ BitVec 64))
(declare-fun a_ack!6532 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!6529 () (_ BitVec 64))
(declare-fun y1_ack!6530 () (_ BitVec 64))
(declare-fun y2_ack!6531 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6534) ((_ to_fp 11 53) x1_ack!6527)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6527) ((_ to_fp 11 53) x2_ack!6528)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6527)
                       ((_ to_fp 11 53) x0_ack!6534))
               ((_ to_fp 11 53) x0_ack!6534))
       ((_ to_fp 11 53) x1_ack!6527)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6527)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6527)
                       ((_ to_fp 11 53) x0_ack!6534)))
       ((_ to_fp 11 53) x0_ack!6534)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6528)
                       ((_ to_fp 11 53) x1_ack!6527))
               ((_ to_fp 11 53) x1_ack!6527))
       ((_ to_fp 11 53) x2_ack!6528)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6528)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6528)
                       ((_ to_fp 11 53) x1_ack!6527)))
       ((_ to_fp 11 53) x1_ack!6527)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6527)
                    ((_ to_fp 11 53) x0_ack!6534))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6528)
                    ((_ to_fp 11 53) x1_ack!6527))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6532) ((_ to_fp 11 53) b_ack!6533))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6532) ((_ to_fp 11 53) x0_ack!6534))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6533) ((_ to_fp 11 53) x2_ack!6528))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6532) ((_ to_fp 11 53) b_ack!6533))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6532) ((_ to_fp 11 53) x0_ack!6534))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6532) ((_ to_fp 11 53) x1_ack!6527)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6527) ((_ to_fp 11 53) a_ack!6532))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6533) ((_ to_fp 11 53) x1_ack!6527))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6533) ((_ to_fp 11 53) x2_ack!6528))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6528)
                    ((_ to_fp 11 53) x1_ack!6527))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6531)
                           ((_ to_fp 11 53) y1_ack!6530))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6528)
                                   ((_ to_fp 11 53) x1_ack!6527)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6530)
                           ((_ to_fp 11 53) y0_ack!6529))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6527)
                                   ((_ to_fp 11 53) x0_ack!6534)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6528)
                                   ((_ to_fp 11 53) x1_ack!6527))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6527)
                                   ((_ to_fp 11 53) x0_ack!6534))))))
  (FPCHECK_FMUL_OVERFLOW
    #x3fd5555555555555
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
