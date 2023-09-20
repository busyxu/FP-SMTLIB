(declare-fun x1_ack!6730 () (_ BitVec 64))
(declare-fun x0_ack!6734 () (_ BitVec 64))
(declare-fun x2_ack!6731 () (_ BitVec 64))
(declare-fun b_ack!6733 () (_ BitVec 64))
(declare-fun a_ack!6732 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6734) ((_ to_fp 11 53) x1_ack!6730)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6730) ((_ to_fp 11 53) x2_ack!6731)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6730)
                       ((_ to_fp 11 53) x0_ack!6734))
               ((_ to_fp 11 53) x0_ack!6734))
       ((_ to_fp 11 53) x1_ack!6730)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6730)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6730)
                       ((_ to_fp 11 53) x0_ack!6734)))
       ((_ to_fp 11 53) x0_ack!6734)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6731)
                       ((_ to_fp 11 53) x1_ack!6730))
               ((_ to_fp 11 53) x1_ack!6730))
       ((_ to_fp 11 53) x2_ack!6731)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6731)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6731)
                       ((_ to_fp 11 53) x1_ack!6730)))
       ((_ to_fp 11 53) x1_ack!6730)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6730)
                    ((_ to_fp 11 53) x0_ack!6734))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6731)
                    ((_ to_fp 11 53) x1_ack!6730))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6732) ((_ to_fp 11 53) b_ack!6733))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6732) ((_ to_fp 11 53) x0_ack!6734))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6733) ((_ to_fp 11 53) x2_ack!6731))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6732) ((_ to_fp 11 53) b_ack!6733))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6732) ((_ to_fp 11 53) x0_ack!6734))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6732) ((_ to_fp 11 53) x1_ack!6730)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6730) ((_ to_fp 11 53) a_ack!6732))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6733) ((_ to_fp 11 53) x1_ack!6730))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6733) ((_ to_fp 11 53) x2_ack!6731))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6731)
                    ((_ to_fp 11 53) x1_ack!6730))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6732)
                                   ((_ to_fp 11 53) x1_ack!6730))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6732)
                                   ((_ to_fp 11 53) x1_ack!6730)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6733)
                                   ((_ to_fp 11 53) x1_ack!6730))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6733)
                                   ((_ to_fp 11 53) x1_ack!6730))))))
  (FPCHECK_FADD_ACCURACY
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6732)
                    ((_ to_fp 11 53) x1_ack!6730))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!6733)
                    ((_ to_fp 11 53) x1_ack!6730))))))

(check-sat)
(exit)
