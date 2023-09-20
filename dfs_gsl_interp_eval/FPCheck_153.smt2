(declare-fun x1_ack!1758 () (_ BitVec 64))
(declare-fun x0_ack!1764 () (_ BitVec 64))
(declare-fun x2_ack!1759 () (_ BitVec 64))
(declare-fun xx_ack!1763 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1760 () (_ BitVec 64))
(declare-fun y1_ack!1761 () (_ BitVec 64))
(declare-fun y2_ack!1762 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1764) ((_ to_fp 11 53) x1_ack!1758)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1758) ((_ to_fp 11 53) x2_ack!1759)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1758)
                       ((_ to_fp 11 53) x0_ack!1764))
               ((_ to_fp 11 53) x0_ack!1764))
       ((_ to_fp 11 53) x1_ack!1758)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1758)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1758)
                       ((_ to_fp 11 53) x0_ack!1764)))
       ((_ to_fp 11 53) x0_ack!1764)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1759)
                       ((_ to_fp 11 53) x1_ack!1758))
               ((_ to_fp 11 53) x1_ack!1758))
       ((_ to_fp 11 53) x2_ack!1759)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1759)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1759)
                       ((_ to_fp 11 53) x1_ack!1758)))
       ((_ to_fp 11 53) x1_ack!1758)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1758)
                    ((_ to_fp 11 53) x0_ack!1764))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1759)
                    ((_ to_fp 11 53) x1_ack!1758))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1763) ((_ to_fp 11 53) x0_ack!1764))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1763) ((_ to_fp 11 53) x2_ack!1759))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1763) ((_ to_fp 11 53) x0_ack!1764))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1763) ((_ to_fp 11 53) x1_ack!1758))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1758)
               ((_ to_fp 11 53) x0_ack!1764))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1762)
                           ((_ to_fp 11 53) y1_ack!1761))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1759)
                                   ((_ to_fp 11 53) x1_ack!1758)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1761)
                           ((_ to_fp 11 53) y0_ack!1760))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1758)
                                   ((_ to_fp 11 53) x0_ack!1764)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1759)
                                   ((_ to_fp 11 53) x1_ack!1758))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1758)
                                   ((_ to_fp 11 53) x0_ack!1764))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1758)
                                   ((_ to_fp 11 53) x0_ack!1764))
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
                                   ((_ to_fp 11 53) x1_ack!1758)
                                   ((_ to_fp 11 53) x0_ack!1764))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1761)
                                   ((_ to_fp 11 53) y0_ack!1760))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1758)
                                   ((_ to_fp 11 53) x0_ack!1764)))
                   a!5))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1763)
                                   ((_ to_fp 11 53) x0_ack!1764))
                           a!7))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1763)
                                   ((_ to_fp 11 53) x0_ack!1764))
                           a!8))))
  (FPCHECK_FADD_OVERFLOW
    y0_ack!1760
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) xx_ack!1763)
                    ((_ to_fp 11 53) x0_ack!1764))
            a!9))))))))

(check-sat)
(exit)
