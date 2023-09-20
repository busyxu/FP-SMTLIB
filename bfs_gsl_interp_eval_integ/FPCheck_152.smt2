(declare-fun x1_ack!1722 () (_ BitVec 64))
(declare-fun x0_ack!1726 () (_ BitVec 64))
(declare-fun x2_ack!1723 () (_ BitVec 64))
(declare-fun b_ack!1725 () (_ BitVec 64))
(declare-fun a_ack!1724 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1726) ((_ to_fp 11 53) x1_ack!1722)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1722) ((_ to_fp 11 53) x2_ack!1723)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1722)
                       ((_ to_fp 11 53) x0_ack!1726))
               ((_ to_fp 11 53) x0_ack!1726))
       ((_ to_fp 11 53) x1_ack!1722)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1722)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1722)
                       ((_ to_fp 11 53) x0_ack!1726)))
       ((_ to_fp 11 53) x0_ack!1726)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1723)
                       ((_ to_fp 11 53) x1_ack!1722))
               ((_ to_fp 11 53) x1_ack!1722))
       ((_ to_fp 11 53) x2_ack!1723)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1723)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1723)
                       ((_ to_fp 11 53) x1_ack!1722)))
       ((_ to_fp 11 53) x1_ack!1722)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1722)
                    ((_ to_fp 11 53) x0_ack!1726))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1723)
                    ((_ to_fp 11 53) x1_ack!1722))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1724) ((_ to_fp 11 53) b_ack!1725))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1724) ((_ to_fp 11 53) x0_ack!1726))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1725) ((_ to_fp 11 53) x2_ack!1723))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1724) ((_ to_fp 11 53) b_ack!1725))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1724) ((_ to_fp 11 53) x0_ack!1726))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1724) ((_ to_fp 11 53) x1_ack!1722))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1725) ((_ to_fp 11 53) x0_ack!1726)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1722)
                    ((_ to_fp 11 53) x0_ack!1726))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1725)
                                  ((_ to_fp 11 53) x0_ack!1726)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1725)
                                   ((_ to_fp 11 53) x0_ack!1726))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1725)
                                   ((_ to_fp 11 53) x0_ack!1726)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1725)
                           ((_ to_fp 11 53) x0_ack!1726)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1725)
                 ((_ to_fp 11 53) x0_ack!1726)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1725)
                                  ((_ to_fp 11 53) x0_ack!1726)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1725)
                                   ((_ to_fp 11 53) x0_ack!1726))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1725)
                                   ((_ to_fp 11 53) x0_ack!1726)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1725)
                           ((_ to_fp 11 53) x0_ack!1726)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1725)
                 ((_ to_fp 11 53) x0_ack!1726)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1724)
          ((_ to_fp 11 53) x0_ack!1726))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1724)
          ((_ to_fp 11 53) x0_ack!1726))))

(check-sat)
(exit)
