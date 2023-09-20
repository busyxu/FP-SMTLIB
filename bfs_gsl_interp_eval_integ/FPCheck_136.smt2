(declare-fun x1_ack!1536 () (_ BitVec 64))
(declare-fun x0_ack!1540 () (_ BitVec 64))
(declare-fun x2_ack!1537 () (_ BitVec 64))
(declare-fun b_ack!1539 () (_ BitVec 64))
(declare-fun a_ack!1538 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1540) ((_ to_fp 11 53) x1_ack!1536)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1536) ((_ to_fp 11 53) x2_ack!1537)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1536)
                       ((_ to_fp 11 53) x0_ack!1540))
               ((_ to_fp 11 53) x0_ack!1540))
       ((_ to_fp 11 53) x1_ack!1536)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1536)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1536)
                       ((_ to_fp 11 53) x0_ack!1540)))
       ((_ to_fp 11 53) x0_ack!1540)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1537)
                       ((_ to_fp 11 53) x1_ack!1536))
               ((_ to_fp 11 53) x1_ack!1536))
       ((_ to_fp 11 53) x2_ack!1537)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1537)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1537)
                       ((_ to_fp 11 53) x1_ack!1536)))
       ((_ to_fp 11 53) x1_ack!1536)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1536)
                    ((_ to_fp 11 53) x0_ack!1540))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1537)
                    ((_ to_fp 11 53) x1_ack!1536))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1538) ((_ to_fp 11 53) b_ack!1539))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1538) ((_ to_fp 11 53) x0_ack!1540))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1539) ((_ to_fp 11 53) x2_ack!1537))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1538) ((_ to_fp 11 53) b_ack!1539))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1538) ((_ to_fp 11 53) x0_ack!1540))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1538) ((_ to_fp 11 53) x1_ack!1536))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1539) ((_ to_fp 11 53) x0_ack!1540)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1536)
                    ((_ to_fp 11 53) x0_ack!1540))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1539)
                                  ((_ to_fp 11 53) x0_ack!1540)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1539)
                                   ((_ to_fp 11 53) x0_ack!1540))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1539)
                                   ((_ to_fp 11 53) x0_ack!1540)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1539)
                           ((_ to_fp 11 53) x0_ack!1540)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1539)
                 ((_ to_fp 11 53) x0_ack!1540)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1539)
                                  ((_ to_fp 11 53) x0_ack!1540)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1539)
                                   ((_ to_fp 11 53) x0_ack!1540))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1539)
                                   ((_ to_fp 11 53) x0_ack!1540)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1539)
                           ((_ to_fp 11 53) x0_ack!1540)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1539)
                 ((_ to_fp 11 53) x0_ack!1540)))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1538)
                  ((_ to_fp 11 53) x0_ack!1540))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1538)
                  ((_ to_fp 11 53) x0_ack!1540)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!1539)
                  ((_ to_fp 11 53) x0_ack!1540))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!1539)
                  ((_ to_fp 11 53) x0_ack!1540)))))

(check-sat)
(exit)
