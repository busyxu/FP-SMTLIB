(declare-fun x1_ack!7942 () (_ BitVec 64))
(declare-fun x0_ack!7946 () (_ BitVec 64))
(declare-fun x2_ack!7943 () (_ BitVec 64))
(declare-fun b_ack!7945 () (_ BitVec 64))
(declare-fun a_ack!7944 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7946) ((_ to_fp 11 53) x1_ack!7942)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7942) ((_ to_fp 11 53) x2_ack!7943)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7942)
                       ((_ to_fp 11 53) x0_ack!7946))
               ((_ to_fp 11 53) x0_ack!7946))
       ((_ to_fp 11 53) x1_ack!7942)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7942)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7942)
                       ((_ to_fp 11 53) x0_ack!7946)))
       ((_ to_fp 11 53) x0_ack!7946)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7943)
                       ((_ to_fp 11 53) x1_ack!7942))
               ((_ to_fp 11 53) x1_ack!7942))
       ((_ to_fp 11 53) x2_ack!7943)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7943)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7943)
                       ((_ to_fp 11 53) x1_ack!7942)))
       ((_ to_fp 11 53) x1_ack!7942)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7942)
                    ((_ to_fp 11 53) x0_ack!7946))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7943)
                    ((_ to_fp 11 53) x1_ack!7942))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7944) ((_ to_fp 11 53) b_ack!7945))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7944) ((_ to_fp 11 53) x0_ack!7946))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7945) ((_ to_fp 11 53) x2_ack!7943))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7944) ((_ to_fp 11 53) b_ack!7945))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7944) ((_ to_fp 11 53) x0_ack!7946))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!7944) ((_ to_fp 11 53) x1_ack!7942)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7942) ((_ to_fp 11 53) a_ack!7944))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7945) ((_ to_fp 11 53) x1_ack!7942))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7945) ((_ to_fp 11 53) x2_ack!7943)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7943)
                    ((_ to_fp 11 53) x1_ack!7942))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!7944)
                       ((_ to_fp 11 53) x1_ack!7942))
               ((_ to_fp 11 53) x1_ack!7942))
       ((_ to_fp 11 53) a_ack!7944)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!7944)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!7944)
                       ((_ to_fp 11 53) x1_ack!7942)))
       ((_ to_fp 11 53) x1_ack!7942)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!7944)
                                  ((_ to_fp 11 53) x1_ack!7942)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7944)
                                   ((_ to_fp 11 53) x1_ack!7942))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7944)
                                   ((_ to_fp 11 53) x1_ack!7942)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7944)
                           ((_ to_fp 11 53) x1_ack!7942)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!7944)
                 ((_ to_fp 11 53) x1_ack!7942)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!7944)
                                  ((_ to_fp 11 53) x1_ack!7942)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7944)
                                   ((_ to_fp 11 53) x1_ack!7942))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7944)
                                   ((_ to_fp 11 53) x1_ack!7942)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7944)
                           ((_ to_fp 11 53) x1_ack!7942)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!7944)
                 ((_ to_fp 11 53) x1_ack!7942)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!7945)
                                  ((_ to_fp 11 53) x1_ack!7942)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7945)
                                   ((_ to_fp 11 53) x1_ack!7942))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7945)
                                   ((_ to_fp 11 53) x1_ack!7942)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7945)
                           ((_ to_fp 11 53) x1_ack!7942)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!7945)
                 ((_ to_fp 11 53) x1_ack!7942)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!7945)
                                  ((_ to_fp 11 53) x1_ack!7942)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7945)
                                   ((_ to_fp 11 53) x1_ack!7942))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7945)
                                   ((_ to_fp 11 53) x1_ack!7942)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7945)
                           ((_ to_fp 11 53) x1_ack!7942)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!7945)
                 ((_ to_fp 11 53) x1_ack!7942)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7944)
                           ((_ to_fp 11 53) x1_ack!7942))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7944)
                           ((_ to_fp 11 53) x1_ack!7942))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7945)
                           ((_ to_fp 11 53) x1_ack!7942))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7945)
                           ((_ to_fp 11 53) x1_ack!7942)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7944)
                           ((_ to_fp 11 53) x1_ack!7942))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7944)
                           ((_ to_fp 11 53) x1_ack!7942))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7945)
                           ((_ to_fp 11 53) x1_ack!7942))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7945)
                           ((_ to_fp 11 53) x1_ack!7942)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))

(check-sat)
(exit)
