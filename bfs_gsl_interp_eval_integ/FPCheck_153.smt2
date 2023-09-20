(declare-fun x1_ack!1732 () (_ BitVec 64))
(declare-fun x0_ack!1736 () (_ BitVec 64))
(declare-fun x2_ack!1733 () (_ BitVec 64))
(declare-fun b_ack!1735 () (_ BitVec 64))
(declare-fun a_ack!1734 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1736) ((_ to_fp 11 53) x1_ack!1732)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1732) ((_ to_fp 11 53) x2_ack!1733)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1732)
                       ((_ to_fp 11 53) x0_ack!1736))
               ((_ to_fp 11 53) x0_ack!1736))
       ((_ to_fp 11 53) x1_ack!1732)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1732)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1732)
                       ((_ to_fp 11 53) x0_ack!1736)))
       ((_ to_fp 11 53) x0_ack!1736)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1733)
                       ((_ to_fp 11 53) x1_ack!1732))
               ((_ to_fp 11 53) x1_ack!1732))
       ((_ to_fp 11 53) x2_ack!1733)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1733)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1733)
                       ((_ to_fp 11 53) x1_ack!1732)))
       ((_ to_fp 11 53) x1_ack!1732)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1732)
                    ((_ to_fp 11 53) x0_ack!1736))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1733)
                    ((_ to_fp 11 53) x1_ack!1732))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1734) ((_ to_fp 11 53) b_ack!1735))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1734) ((_ to_fp 11 53) x0_ack!1736))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1735) ((_ to_fp 11 53) x2_ack!1733))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1734) ((_ to_fp 11 53) b_ack!1735))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1734) ((_ to_fp 11 53) x0_ack!1736))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1734) ((_ to_fp 11 53) x1_ack!1732))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1735) ((_ to_fp 11 53) x0_ack!1736)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1732)
                    ((_ to_fp 11 53) x0_ack!1736))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1735)
                                  ((_ to_fp 11 53) x0_ack!1736)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1735)
                                   ((_ to_fp 11 53) x0_ack!1736))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1735)
                                   ((_ to_fp 11 53) x0_ack!1736)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1735)
                           ((_ to_fp 11 53) x0_ack!1736)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1735)
                 ((_ to_fp 11 53) x0_ack!1736)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1735)
                                  ((_ to_fp 11 53) x0_ack!1736)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1735)
                                   ((_ to_fp 11 53) x0_ack!1736))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1735)
                                   ((_ to_fp 11 53) x0_ack!1736)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1735)
                           ((_ to_fp 11 53) x0_ack!1736)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1735)
                 ((_ to_fp 11 53) x0_ack!1736)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1734)
          ((_ to_fp 11 53) x0_ack!1736))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1734)
          ((_ to_fp 11 53) x0_ack!1736))))

(check-sat)
(exit)
