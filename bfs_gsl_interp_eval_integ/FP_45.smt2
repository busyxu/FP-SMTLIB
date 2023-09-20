(declare-fun x1_ack!1506 () (_ BitVec 64))
(declare-fun x0_ack!1510 () (_ BitVec 64))
(declare-fun x2_ack!1507 () (_ BitVec 64))
(declare-fun b_ack!1509 () (_ BitVec 64))
(declare-fun a_ack!1508 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1510) ((_ to_fp 11 53) x1_ack!1506)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1506) ((_ to_fp 11 53) x2_ack!1507)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1506)
                       ((_ to_fp 11 53) x0_ack!1510))
               ((_ to_fp 11 53) x0_ack!1510))
       ((_ to_fp 11 53) x1_ack!1506)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1506)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1506)
                       ((_ to_fp 11 53) x0_ack!1510)))
       ((_ to_fp 11 53) x0_ack!1510)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1507)
                       ((_ to_fp 11 53) x1_ack!1506))
               ((_ to_fp 11 53) x1_ack!1506))
       ((_ to_fp 11 53) x2_ack!1507)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1507)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1507)
                       ((_ to_fp 11 53) x1_ack!1506)))
       ((_ to_fp 11 53) x1_ack!1506)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1506)
                    ((_ to_fp 11 53) x0_ack!1510))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1507)
                    ((_ to_fp 11 53) x1_ack!1506))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1508) ((_ to_fp 11 53) b_ack!1509))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1508) ((_ to_fp 11 53) x0_ack!1510))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1509) ((_ to_fp 11 53) x2_ack!1507))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1508) ((_ to_fp 11 53) b_ack!1509))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1508) ((_ to_fp 11 53) x0_ack!1510))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1508) ((_ to_fp 11 53) x1_ack!1506))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1509) ((_ to_fp 11 53) x0_ack!1510)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1506)
                    ((_ to_fp 11 53) x0_ack!1510))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1509)
                                  ((_ to_fp 11 53) x0_ack!1510)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1509)
                                   ((_ to_fp 11 53) x0_ack!1510))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1509)
                                   ((_ to_fp 11 53) x0_ack!1510)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1509)
                           ((_ to_fp 11 53) x0_ack!1510)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1509)
                 ((_ to_fp 11 53) x0_ack!1510)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1509)
                                  ((_ to_fp 11 53) x0_ack!1510)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1509)
                                   ((_ to_fp 11 53) x0_ack!1510))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1509)
                                   ((_ to_fp 11 53) x0_ack!1510)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1509)
                           ((_ to_fp 11 53) x0_ack!1510)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1509)
                 ((_ to_fp 11 53) x0_ack!1510)))))

(check-sat)
(exit)
