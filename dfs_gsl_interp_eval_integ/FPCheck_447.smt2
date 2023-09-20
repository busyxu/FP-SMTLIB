(declare-fun x1_ack!5533 () (_ BitVec 64))
(declare-fun x0_ack!5537 () (_ BitVec 64))
(declare-fun x2_ack!5534 () (_ BitVec 64))
(declare-fun b_ack!5536 () (_ BitVec 64))
(declare-fun a_ack!5535 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5537) ((_ to_fp 11 53) x1_ack!5533)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5533) ((_ to_fp 11 53) x2_ack!5534)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5533)
                       ((_ to_fp 11 53) x0_ack!5537))
               ((_ to_fp 11 53) x0_ack!5537))
       ((_ to_fp 11 53) x1_ack!5533)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5533)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5533)
                       ((_ to_fp 11 53) x0_ack!5537)))
       ((_ to_fp 11 53) x0_ack!5537)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5534)
                       ((_ to_fp 11 53) x1_ack!5533))
               ((_ to_fp 11 53) x1_ack!5533))
       ((_ to_fp 11 53) x2_ack!5534)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5534)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5534)
                       ((_ to_fp 11 53) x1_ack!5533)))
       ((_ to_fp 11 53) x1_ack!5533)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5533)
                    ((_ to_fp 11 53) x0_ack!5537))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5534)
                    ((_ to_fp 11 53) x1_ack!5533))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5535) ((_ to_fp 11 53) b_ack!5536))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5535) ((_ to_fp 11 53) x0_ack!5537))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5536) ((_ to_fp 11 53) x2_ack!5534))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5535) ((_ to_fp 11 53) b_ack!5536))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5535) ((_ to_fp 11 53) x0_ack!5537))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5535) ((_ to_fp 11 53) x1_ack!5533)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5533) ((_ to_fp 11 53) a_ack!5535))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5536) ((_ to_fp 11 53) x1_ack!5533))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5536) ((_ to_fp 11 53) x2_ack!5534)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5534)
                    ((_ to_fp 11 53) x1_ack!5533))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5535)
                       ((_ to_fp 11 53) x1_ack!5533))
               ((_ to_fp 11 53) x1_ack!5533))
       ((_ to_fp 11 53) a_ack!5535)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5535)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5535)
                       ((_ to_fp 11 53) x1_ack!5533)))
       ((_ to_fp 11 53) x1_ack!5533)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5535)
                                  ((_ to_fp 11 53) x1_ack!5533)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5535)
                                   ((_ to_fp 11 53) x1_ack!5533))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5535)
                                   ((_ to_fp 11 53) x1_ack!5533)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5535)
                           ((_ to_fp 11 53) x1_ack!5533)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5535)
                 ((_ to_fp 11 53) x1_ack!5533)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5535)
                                  ((_ to_fp 11 53) x1_ack!5533)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5535)
                                   ((_ to_fp 11 53) x1_ack!5533))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5535)
                                   ((_ to_fp 11 53) x1_ack!5533)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5535)
                           ((_ to_fp 11 53) x1_ack!5533)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5535)
                 ((_ to_fp 11 53) x1_ack!5533)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5536)
                                  ((_ to_fp 11 53) x1_ack!5533)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5536)
                                   ((_ to_fp 11 53) x1_ack!5533))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5536)
                                   ((_ to_fp 11 53) x1_ack!5533)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5536)
                           ((_ to_fp 11 53) x1_ack!5533)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5536)
                 ((_ to_fp 11 53) x1_ack!5533)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5536)
                                  ((_ to_fp 11 53) x1_ack!5533)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5536)
                                   ((_ to_fp 11 53) x1_ack!5533))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5536)
                                   ((_ to_fp 11 53) x1_ack!5533)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5536)
                           ((_ to_fp 11 53) x1_ack!5533)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5536)
                 ((_ to_fp 11 53) x1_ack!5533)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5535)
                           ((_ to_fp 11 53) x1_ack!5533))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5535)
                           ((_ to_fp 11 53) x1_ack!5533))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5536)
                           ((_ to_fp 11 53) x1_ack!5533))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5536)
                           ((_ to_fp 11 53) x1_ack!5533)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5535)
                           ((_ to_fp 11 53) x1_ack!5533))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5535)
                           ((_ to_fp 11 53) x1_ack!5533))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5536)
                           ((_ to_fp 11 53) x1_ack!5533))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5536)
                           ((_ to_fp 11 53) x1_ack!5533)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5535)
                                   ((_ to_fp 11 53) x1_ack!5533))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5535)
                                   ((_ to_fp 11 53) x1_ack!5533)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5536)
                                   ((_ to_fp 11 53) x1_ack!5533))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5536)
                                   ((_ to_fp 11 53) x1_ack!5533)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5535)
                           ((_ to_fp 11 53) x1_ack!5533))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5536)
                           ((_ to_fp 11 53) x1_ack!5533)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5535)
                                   ((_ to_fp 11 53) x1_ack!5533))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5535)
                                   ((_ to_fp 11 53) x1_ack!5533)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5536)
                                   ((_ to_fp 11 53) x1_ack!5533))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5536)
                                   ((_ to_fp 11 53) x1_ack!5533)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5535)
                           ((_ to_fp 11 53) x1_ack!5533))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5536)
                           ((_ to_fp 11 53) x1_ack!5533)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5535)
                  ((_ to_fp 11 53) x1_ack!5533))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5535)
                  ((_ to_fp 11 53) x1_ack!5533)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!5536)
                  ((_ to_fp 11 53) x1_ack!5533))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!5536)
                  ((_ to_fp 11 53) x1_ack!5533)))))

(check-sat)
(exit)
