(declare-fun x1_ack!1772 () (_ BitVec 64))
(declare-fun x0_ack!1778 () (_ BitVec 64))
(declare-fun x2_ack!1773 () (_ BitVec 64))
(declare-fun xx_ack!1777 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1774 () (_ BitVec 64))
(declare-fun y1_ack!1775 () (_ BitVec 64))
(declare-fun y2_ack!1776 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1778) ((_ to_fp 11 53) x1_ack!1772)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1772) ((_ to_fp 11 53) x2_ack!1773)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1772)
                       ((_ to_fp 11 53) x0_ack!1778))
               ((_ to_fp 11 53) x0_ack!1778))
       ((_ to_fp 11 53) x1_ack!1772)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1772)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1772)
                       ((_ to_fp 11 53) x0_ack!1778)))
       ((_ to_fp 11 53) x0_ack!1778)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1773)
                       ((_ to_fp 11 53) x1_ack!1772))
               ((_ to_fp 11 53) x1_ack!1772))
       ((_ to_fp 11 53) x2_ack!1773)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1773)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1773)
                       ((_ to_fp 11 53) x1_ack!1772)))
       ((_ to_fp 11 53) x1_ack!1772)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1772)
                    ((_ to_fp 11 53) x0_ack!1778))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1773)
                    ((_ to_fp 11 53) x1_ack!1772))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1777) ((_ to_fp 11 53) x0_ack!1778))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1777) ((_ to_fp 11 53) x2_ack!1773))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1777) ((_ to_fp 11 53) x0_ack!1778))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1777) ((_ to_fp 11 53) x1_ack!1772))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1772)
               ((_ to_fp 11 53) x0_ack!1778))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1776)
                           ((_ to_fp 11 53) y1_ack!1775))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1773)
                                   ((_ to_fp 11 53) x1_ack!1772)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1775)
                           ((_ to_fp 11 53) y0_ack!1774))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1772)
                                   ((_ to_fp 11 53) x0_ack!1778)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1773)
                                   ((_ to_fp 11 53) x1_ack!1772))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1772)
                                   ((_ to_fp 11 53) x0_ack!1778))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1772)
                                   ((_ to_fp 11 53) x0_ack!1778))
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1772)
                                   ((_ to_fp 11 53) x0_ack!1778))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1775)
                                   ((_ to_fp 11 53) y0_ack!1774))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1772)
                                   ((_ to_fp 11 53) x0_ack!1778)))
                   a!5))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1777)
                                   ((_ to_fp 11 53) x0_ack!1778))
                           a!7))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1777)
                                   ((_ to_fp 11 53) x0_ack!1778))
                           a!8))))
  (FPCHECK_FADD_UNDERFLOW
    y0_ack!1774
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) xx_ack!1777)
                    ((_ to_fp 11 53) x0_ack!1778))
            a!9))))))))

(check-sat)
(exit)
