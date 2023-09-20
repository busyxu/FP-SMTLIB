(declare-fun x1_ack!1777 () (_ BitVec 64))
(declare-fun x0_ack!1781 () (_ BitVec 64))
(declare-fun x2_ack!1778 () (_ BitVec 64))
(declare-fun b_ack!1780 () (_ BitVec 64))
(declare-fun a_ack!1779 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1781) ((_ to_fp 11 53) x1_ack!1777)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1777) ((_ to_fp 11 53) x2_ack!1778)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1777)
                       ((_ to_fp 11 53) x0_ack!1781))
               ((_ to_fp 11 53) x0_ack!1781))
       ((_ to_fp 11 53) x1_ack!1777)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1777)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1777)
                       ((_ to_fp 11 53) x0_ack!1781)))
       ((_ to_fp 11 53) x0_ack!1781)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1778)
                       ((_ to_fp 11 53) x1_ack!1777))
               ((_ to_fp 11 53) x1_ack!1777))
       ((_ to_fp 11 53) x2_ack!1778)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1778)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1778)
                       ((_ to_fp 11 53) x1_ack!1777)))
       ((_ to_fp 11 53) x1_ack!1777)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1777)
                    ((_ to_fp 11 53) x0_ack!1781))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1778)
                    ((_ to_fp 11 53) x1_ack!1777))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1779) ((_ to_fp 11 53) b_ack!1780))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1779) ((_ to_fp 11 53) x0_ack!1781))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1780) ((_ to_fp 11 53) x2_ack!1778))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1779) ((_ to_fp 11 53) b_ack!1780))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1779) ((_ to_fp 11 53) x0_ack!1781))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1779) ((_ to_fp 11 53) x1_ack!1777))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1780) ((_ to_fp 11 53) x0_ack!1781)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1777)
                    ((_ to_fp 11 53) x0_ack!1781))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1780)
                                  ((_ to_fp 11 53) x0_ack!1781)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1780)
                                   ((_ to_fp 11 53) x0_ack!1781))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1780)
                                   ((_ to_fp 11 53) x0_ack!1781)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1780)
                           ((_ to_fp 11 53) x0_ack!1781)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1780)
                 ((_ to_fp 11 53) x0_ack!1781)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1780)
                                  ((_ to_fp 11 53) x0_ack!1781)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1780)
                                   ((_ to_fp 11 53) x0_ack!1781))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1780)
                                   ((_ to_fp 11 53) x0_ack!1781)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1780)
                           ((_ to_fp 11 53) x0_ack!1781)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1780)
                 ((_ to_fp 11 53) x0_ack!1781)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1779)
                  ((_ to_fp 11 53) x0_ack!1781))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1779)
                  ((_ to_fp 11 53) x0_ack!1781)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!1780)
                  ((_ to_fp 11 53) x0_ack!1781))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!1780)
                  ((_ to_fp 11 53) x0_ack!1781)))))

(check-sat)
(exit)
