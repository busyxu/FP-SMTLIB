(declare-fun x1_ack!5528 () (_ BitVec 64))
(declare-fun x0_ack!5535 () (_ BitVec 64))
(declare-fun x2_ack!5529 () (_ BitVec 64))
(declare-fun b_ack!5534 () (_ BitVec 64))
(declare-fun a_ack!5533 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!5530 () (_ BitVec 64))
(declare-fun y1_ack!5531 () (_ BitVec 64))
(declare-fun y2_ack!5532 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5535) ((_ to_fp 11 53) x1_ack!5528)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5528) ((_ to_fp 11 53) x2_ack!5529)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5528)
                       ((_ to_fp 11 53) x0_ack!5535))
               ((_ to_fp 11 53) x0_ack!5535))
       ((_ to_fp 11 53) x1_ack!5528)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5528)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5528)
                       ((_ to_fp 11 53) x0_ack!5535)))
       ((_ to_fp 11 53) x0_ack!5535)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5529)
                       ((_ to_fp 11 53) x1_ack!5528))
               ((_ to_fp 11 53) x1_ack!5528))
       ((_ to_fp 11 53) x2_ack!5529)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5529)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5529)
                       ((_ to_fp 11 53) x1_ack!5528)))
       ((_ to_fp 11 53) x1_ack!5528)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5528)
                    ((_ to_fp 11 53) x0_ack!5535))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5529)
                    ((_ to_fp 11 53) x1_ack!5528))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5533) ((_ to_fp 11 53) b_ack!5534))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5533) ((_ to_fp 11 53) x0_ack!5535))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5534) ((_ to_fp 11 53) x2_ack!5529))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5533) ((_ to_fp 11 53) b_ack!5534))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5533) ((_ to_fp 11 53) x0_ack!5535))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5533) ((_ to_fp 11 53) x1_ack!5528))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5534) ((_ to_fp 11 53) x0_ack!5535))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5534) ((_ to_fp 11 53) x1_ack!5528)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5528) ((_ to_fp 11 53) b_ack!5534))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5528)
                    ((_ to_fp 11 53) x0_ack!5535))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5532)
                           ((_ to_fp 11 53) y1_ack!5531))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5529)
                                   ((_ to_fp 11 53) x1_ack!5528)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5531)
                           ((_ to_fp 11 53) y0_ack!5530))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5528)
                                   ((_ to_fp 11 53) x0_ack!5535)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5529)
                                   ((_ to_fp 11 53) x1_ack!5528))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5528)
                                   ((_ to_fp 11 53) x0_ack!5535))))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
