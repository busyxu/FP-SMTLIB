(declare-fun x1_ack!1638 () (_ BitVec 64))
(declare-fun x0_ack!1645 () (_ BitVec 64))
(declare-fun x2_ack!1639 () (_ BitVec 64))
(declare-fun b_ack!1644 () (_ BitVec 64))
(declare-fun a_ack!1643 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1640 () (_ BitVec 64))
(declare-fun y1_ack!1641 () (_ BitVec 64))
(declare-fun y2_ack!1642 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1645) ((_ to_fp 11 53) x1_ack!1638)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1638) ((_ to_fp 11 53) x2_ack!1639)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1638)
                       ((_ to_fp 11 53) x0_ack!1645))
               ((_ to_fp 11 53) x0_ack!1645))
       ((_ to_fp 11 53) x1_ack!1638)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1638)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1638)
                       ((_ to_fp 11 53) x0_ack!1645)))
       ((_ to_fp 11 53) x0_ack!1645)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1639)
                       ((_ to_fp 11 53) x1_ack!1638))
               ((_ to_fp 11 53) x1_ack!1638))
       ((_ to_fp 11 53) x2_ack!1639)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1639)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1639)
                       ((_ to_fp 11 53) x1_ack!1638)))
       ((_ to_fp 11 53) x1_ack!1638)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1638)
                    ((_ to_fp 11 53) x0_ack!1645))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1639)
                    ((_ to_fp 11 53) x1_ack!1638))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1643) ((_ to_fp 11 53) b_ack!1644))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1643) ((_ to_fp 11 53) x0_ack!1645))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1644) ((_ to_fp 11 53) x2_ack!1639))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1643) ((_ to_fp 11 53) b_ack!1644))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1643) ((_ to_fp 11 53) x0_ack!1645))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1643) ((_ to_fp 11 53) x1_ack!1638))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1644) ((_ to_fp 11 53) x0_ack!1645)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1638)
                    ((_ to_fp 11 53) x0_ack!1645))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1644)
                                  ((_ to_fp 11 53) x0_ack!1645)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1644)
                                   ((_ to_fp 11 53) x0_ack!1645))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1644)
                                   ((_ to_fp 11 53) x0_ack!1645)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1644)
                           ((_ to_fp 11 53) x0_ack!1645)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1644)
                 ((_ to_fp 11 53) x0_ack!1645)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1644)
                                  ((_ to_fp 11 53) x0_ack!1645)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1644)
                                   ((_ to_fp 11 53) x0_ack!1645))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1644)
                                   ((_ to_fp 11 53) x0_ack!1645)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1644)
                           ((_ to_fp 11 53) x0_ack!1645)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1644)
                 ((_ to_fp 11 53) x0_ack!1645)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1642)
                           ((_ to_fp 11 53) y1_ack!1641))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1639)
                                   ((_ to_fp 11 53) x1_ack!1638)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1641)
                           ((_ to_fp 11 53) y0_ack!1640))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1638)
                                   ((_ to_fp 11 53) x0_ack!1645)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1639)
                                   ((_ to_fp 11 53) x1_ack!1638))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1638)
                                   ((_ to_fp 11 53) x0_ack!1645))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1638)
                                   ((_ to_fp 11 53) x0_ack!1645))))))
  (FPCHECK_FMUL_ACCURACY #x3fd0000000000000 a!5)))))

(check-sat)
(exit)
