(declare-fun x1_ack!1499 () (_ BitVec 64))
(declare-fun x0_ack!1505 () (_ BitVec 64))
(declare-fun x2_ack!1500 () (_ BitVec 64))
(declare-fun xx_ack!1504 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1501 () (_ BitVec 64))
(declare-fun y1_ack!1502 () (_ BitVec 64))
(declare-fun y2_ack!1503 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1505) ((_ to_fp 11 53) x1_ack!1499)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1499) ((_ to_fp 11 53) x2_ack!1500)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1499)
                       ((_ to_fp 11 53) x0_ack!1505))
               ((_ to_fp 11 53) x0_ack!1505))
       ((_ to_fp 11 53) x1_ack!1499)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1499)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1499)
                       ((_ to_fp 11 53) x0_ack!1505)))
       ((_ to_fp 11 53) x0_ack!1505)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1500)
                       ((_ to_fp 11 53) x1_ack!1499))
               ((_ to_fp 11 53) x1_ack!1499))
       ((_ to_fp 11 53) x2_ack!1500)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1500)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1500)
                       ((_ to_fp 11 53) x1_ack!1499)))
       ((_ to_fp 11 53) x1_ack!1499)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1499)
                    ((_ to_fp 11 53) x0_ack!1505))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1500)
                    ((_ to_fp 11 53) x1_ack!1499))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1504) ((_ to_fp 11 53) x0_ack!1505))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1504) ((_ to_fp 11 53) x2_ack!1500))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1504) ((_ to_fp 11 53) x0_ack!1505))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1504) ((_ to_fp 11 53) x1_ack!1499)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1499) ((_ to_fp 11 53) xx_ack!1504))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1500)
               ((_ to_fp 11 53) x1_ack!1499))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1503)
                           ((_ to_fp 11 53) y1_ack!1502))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1500)
                                   ((_ to_fp 11 53) x1_ack!1499)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1502)
                           ((_ to_fp 11 53) y0_ack!1501))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1499)
                                   ((_ to_fp 11 53) x0_ack!1505)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1500)
                                   ((_ to_fp 11 53) x1_ack!1499))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1499)
                                   ((_ to_fp 11 53) x0_ack!1505))))))
  (FPCHECK_FMUL_OVERFLOW
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
