(declare-fun x1_ack!591 () (_ BitVec 64))
(declare-fun x0_ack!597 () (_ BitVec 64))
(declare-fun x2_ack!592 () (_ BitVec 64))
(declare-fun xx_ack!596 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!593 () (_ BitVec 64))
(declare-fun y1_ack!594 () (_ BitVec 64))
(declare-fun y2_ack!595 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!597) ((_ to_fp 11 53) x1_ack!591)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!591) ((_ to_fp 11 53) x2_ack!592)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!591)
                       ((_ to_fp 11 53) x0_ack!597))
               ((_ to_fp 11 53) x0_ack!597))
       ((_ to_fp 11 53) x1_ack!591)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!591)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!591)
                       ((_ to_fp 11 53) x0_ack!597)))
       ((_ to_fp 11 53) x0_ack!597)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!592)
                       ((_ to_fp 11 53) x1_ack!591))
               ((_ to_fp 11 53) x1_ack!591))
       ((_ to_fp 11 53) x2_ack!592)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!592)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!592)
                       ((_ to_fp 11 53) x1_ack!591)))
       ((_ to_fp 11 53) x1_ack!591)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!591)
                    ((_ to_fp 11 53) x0_ack!597))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!592)
                    ((_ to_fp 11 53) x1_ack!591))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!596) ((_ to_fp 11 53) x0_ack!597))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!596) ((_ to_fp 11 53) x2_ack!592))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!596) ((_ to_fp 11 53) x0_ack!597))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!596) ((_ to_fp 11 53) x1_ack!591)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!591) ((_ to_fp 11 53) xx_ack!596))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!592)
               ((_ to_fp 11 53) x1_ack!591))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!595)
                           ((_ to_fp 11 53) y1_ack!594))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!592)
                                   ((_ to_fp 11 53) x1_ack!591)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!594)
                           ((_ to_fp 11 53) y0_ack!593))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!591)
                                   ((_ to_fp 11 53) x0_ack!597)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!592)
                                   ((_ to_fp 11 53) x1_ack!591))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!591)
                                   ((_ to_fp 11 53) x0_ack!597))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FADD_UNDERFLOW #x0000000000000000 a!4))))

(check-sat)
(exit)
