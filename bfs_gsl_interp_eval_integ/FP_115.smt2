(declare-fun x1_ack!6612 () (_ BitVec 64))
(declare-fun x0_ack!6616 () (_ BitVec 64))
(declare-fun x2_ack!6613 () (_ BitVec 64))
(declare-fun b_ack!6615 () (_ BitVec 64))
(declare-fun a_ack!6614 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6616) ((_ to_fp 11 53) x1_ack!6612)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6612) ((_ to_fp 11 53) x2_ack!6613)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6612)
                       ((_ to_fp 11 53) x0_ack!6616))
               ((_ to_fp 11 53) x0_ack!6616))
       ((_ to_fp 11 53) x1_ack!6612)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6612)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6612)
                       ((_ to_fp 11 53) x0_ack!6616)))
       ((_ to_fp 11 53) x0_ack!6616)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6613)
                       ((_ to_fp 11 53) x1_ack!6612))
               ((_ to_fp 11 53) x1_ack!6612))
       ((_ to_fp 11 53) x2_ack!6613)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6613)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6613)
                       ((_ to_fp 11 53) x1_ack!6612)))
       ((_ to_fp 11 53) x1_ack!6612)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6612)
                    ((_ to_fp 11 53) x0_ack!6616))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6613)
                    ((_ to_fp 11 53) x1_ack!6612))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6614) ((_ to_fp 11 53) b_ack!6615))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6614) ((_ to_fp 11 53) x0_ack!6616))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6615) ((_ to_fp 11 53) x2_ack!6613))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6614) ((_ to_fp 11 53) b_ack!6615))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6614) ((_ to_fp 11 53) x0_ack!6616))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6614) ((_ to_fp 11 53) x1_ack!6612)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6612) ((_ to_fp 11 53) a_ack!6614))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6615) ((_ to_fp 11 53) x1_ack!6612))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6615) ((_ to_fp 11 53) x2_ack!6613)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6613)
                    ((_ to_fp 11 53) x1_ack!6612))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!6614)
                       ((_ to_fp 11 53) x1_ack!6612))
               ((_ to_fp 11 53) x1_ack!6612))
       ((_ to_fp 11 53) a_ack!6614)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!6614)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!6614)
                       ((_ to_fp 11 53) x1_ack!6612)))
       ((_ to_fp 11 53) x1_ack!6612)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!6614)
                                  ((_ to_fp 11 53) x1_ack!6612)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6614)
                                   ((_ to_fp 11 53) x1_ack!6612))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6614)
                                   ((_ to_fp 11 53) x1_ack!6612)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!6614)
                           ((_ to_fp 11 53) x1_ack!6612)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!6614)
                 ((_ to_fp 11 53) x1_ack!6612)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!6614)
                                  ((_ to_fp 11 53) x1_ack!6612)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6614)
                                   ((_ to_fp 11 53) x1_ack!6612))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6614)
                                   ((_ to_fp 11 53) x1_ack!6612)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!6614)
                           ((_ to_fp 11 53) x1_ack!6612)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!6614)
                 ((_ to_fp 11 53) x1_ack!6612)))))

(check-sat)
(exit)
