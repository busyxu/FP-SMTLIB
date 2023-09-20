(declare-fun x1_ack!535 () (_ BitVec 64))
(declare-fun x0_ack!541 () (_ BitVec 64))
(declare-fun x2_ack!536 () (_ BitVec 64))
(declare-fun xx_ack!540 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!537 () (_ BitVec 64))
(declare-fun y1_ack!538 () (_ BitVec 64))
(declare-fun y2_ack!539 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!541) ((_ to_fp 11 53) x1_ack!535)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!535) ((_ to_fp 11 53) x2_ack!536)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!535)
                       ((_ to_fp 11 53) x0_ack!541))
               ((_ to_fp 11 53) x0_ack!541))
       ((_ to_fp 11 53) x1_ack!535)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!535)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!535)
                       ((_ to_fp 11 53) x0_ack!541)))
       ((_ to_fp 11 53) x0_ack!541)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!536)
                       ((_ to_fp 11 53) x1_ack!535))
               ((_ to_fp 11 53) x1_ack!535))
       ((_ to_fp 11 53) x2_ack!536)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!536)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!536)
                       ((_ to_fp 11 53) x1_ack!535)))
       ((_ to_fp 11 53) x1_ack!535)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!535)
                    ((_ to_fp 11 53) x0_ack!541))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!536)
                    ((_ to_fp 11 53) x1_ack!535))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!540) ((_ to_fp 11 53) x0_ack!541))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!540) ((_ to_fp 11 53) x2_ack!536))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!540) ((_ to_fp 11 53) x0_ack!541))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!540) ((_ to_fp 11 53) x1_ack!535))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!535)
               ((_ to_fp 11 53) x0_ack!541))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!539)
                           ((_ to_fp 11 53) y1_ack!538))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!536)
                                   ((_ to_fp 11 53) x1_ack!535)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!538)
                           ((_ to_fp 11 53) y0_ack!537))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!535)
                                   ((_ to_fp 11 53) x0_ack!541)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!536)
                                   ((_ to_fp 11 53) x1_ack!535))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!535)
                                   ((_ to_fp 11 53) x0_ack!541))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
