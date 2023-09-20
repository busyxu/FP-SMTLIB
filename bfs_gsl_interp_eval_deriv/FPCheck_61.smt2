(declare-fun x1_ack!549 () (_ BitVec 64))
(declare-fun x0_ack!555 () (_ BitVec 64))
(declare-fun x2_ack!550 () (_ BitVec 64))
(declare-fun xx_ack!554 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!551 () (_ BitVec 64))
(declare-fun y1_ack!552 () (_ BitVec 64))
(declare-fun y2_ack!553 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!555) ((_ to_fp 11 53) x1_ack!549)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!549) ((_ to_fp 11 53) x2_ack!550)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!549)
                       ((_ to_fp 11 53) x0_ack!555))
               ((_ to_fp 11 53) x0_ack!555))
       ((_ to_fp 11 53) x1_ack!549)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!549)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!549)
                       ((_ to_fp 11 53) x0_ack!555)))
       ((_ to_fp 11 53) x0_ack!555)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!550)
                       ((_ to_fp 11 53) x1_ack!549))
               ((_ to_fp 11 53) x1_ack!549))
       ((_ to_fp 11 53) x2_ack!550)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!550)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!550)
                       ((_ to_fp 11 53) x1_ack!549)))
       ((_ to_fp 11 53) x1_ack!549)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!549)
                    ((_ to_fp 11 53) x0_ack!555))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!550)
                    ((_ to_fp 11 53) x1_ack!549))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!554) ((_ to_fp 11 53) x0_ack!555))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!554) ((_ to_fp 11 53) x2_ack!550))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!554) ((_ to_fp 11 53) x0_ack!555))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!554) ((_ to_fp 11 53) x1_ack!549))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!549)
               ((_ to_fp 11 53) x0_ack!555))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!553)
                           ((_ to_fp 11 53) y1_ack!552))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!550)
                                   ((_ to_fp 11 53) x1_ack!549)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!552)
                           ((_ to_fp 11 53) y0_ack!551))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!549)
                                   ((_ to_fp 11 53) x0_ack!555)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!550)
                                   ((_ to_fp 11 53) x1_ack!549))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!549)
                                   ((_ to_fp 11 53) x0_ack!555))))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
