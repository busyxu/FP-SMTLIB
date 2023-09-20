(declare-fun x1_ack!6642 () (_ BitVec 64))
(declare-fun x0_ack!6646 () (_ BitVec 64))
(declare-fun x2_ack!6643 () (_ BitVec 64))
(declare-fun b_ack!6645 () (_ BitVec 64))
(declare-fun a_ack!6644 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6646) ((_ to_fp 11 53) x1_ack!6642)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6642) ((_ to_fp 11 53) x2_ack!6643)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6642)
                       ((_ to_fp 11 53) x0_ack!6646))
               ((_ to_fp 11 53) x0_ack!6646))
       ((_ to_fp 11 53) x1_ack!6642)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6642)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6642)
                       ((_ to_fp 11 53) x0_ack!6646)))
       ((_ to_fp 11 53) x0_ack!6646)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6643)
                       ((_ to_fp 11 53) x1_ack!6642))
               ((_ to_fp 11 53) x1_ack!6642))
       ((_ to_fp 11 53) x2_ack!6643)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6643)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6643)
                       ((_ to_fp 11 53) x1_ack!6642)))
       ((_ to_fp 11 53) x1_ack!6642)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6642)
                    ((_ to_fp 11 53) x0_ack!6646))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6643)
                    ((_ to_fp 11 53) x1_ack!6642))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6644) ((_ to_fp 11 53) b_ack!6645))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6644) ((_ to_fp 11 53) x0_ack!6646))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6645) ((_ to_fp 11 53) x2_ack!6643))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6644) ((_ to_fp 11 53) b_ack!6645))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6644) ((_ to_fp 11 53) x0_ack!6646))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6644) ((_ to_fp 11 53) x1_ack!6642)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6642) ((_ to_fp 11 53) a_ack!6644))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6645) ((_ to_fp 11 53) x1_ack!6642))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6645) ((_ to_fp 11 53) x2_ack!6643)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6643)
                    ((_ to_fp 11 53) x1_ack!6642))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!6644)
                       ((_ to_fp 11 53) x1_ack!6642))
               ((_ to_fp 11 53) x1_ack!6642))
       ((_ to_fp 11 53) a_ack!6644)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!6644)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!6644)
                       ((_ to_fp 11 53) x1_ack!6642)))
       ((_ to_fp 11 53) x1_ack!6642)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!6644)
                                  ((_ to_fp 11 53) x1_ack!6642)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6644)
                                   ((_ to_fp 11 53) x1_ack!6642))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6644)
                                   ((_ to_fp 11 53) x1_ack!6642)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!6644)
                           ((_ to_fp 11 53) x1_ack!6642)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!6644)
                 ((_ to_fp 11 53) x1_ack!6642)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!6644)
                                  ((_ to_fp 11 53) x1_ack!6642)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6644)
                                   ((_ to_fp 11 53) x1_ack!6642))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6644)
                                   ((_ to_fp 11 53) x1_ack!6642)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!6644)
                           ((_ to_fp 11 53) x1_ack!6642)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!6644)
                 ((_ to_fp 11 53) x1_ack!6642)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!6645)
          ((_ to_fp 11 53) x1_ack!6642))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!6645)
          ((_ to_fp 11 53) x1_ack!6642))))

(check-sat)
(exit)
