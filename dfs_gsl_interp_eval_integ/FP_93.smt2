(declare-fun x1_ack!5254 () (_ BitVec 64))
(declare-fun x0_ack!5258 () (_ BitVec 64))
(declare-fun x2_ack!5255 () (_ BitVec 64))
(declare-fun b_ack!5257 () (_ BitVec 64))
(declare-fun a_ack!5256 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5258) ((_ to_fp 11 53) x1_ack!5254)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5254) ((_ to_fp 11 53) x2_ack!5255)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5254)
                       ((_ to_fp 11 53) x0_ack!5258))
               ((_ to_fp 11 53) x0_ack!5258))
       ((_ to_fp 11 53) x1_ack!5254)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5254)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5254)
                       ((_ to_fp 11 53) x0_ack!5258)))
       ((_ to_fp 11 53) x0_ack!5258)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5255)
                       ((_ to_fp 11 53) x1_ack!5254))
               ((_ to_fp 11 53) x1_ack!5254))
       ((_ to_fp 11 53) x2_ack!5255)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5255)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5255)
                       ((_ to_fp 11 53) x1_ack!5254)))
       ((_ to_fp 11 53) x1_ack!5254)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5254)
                    ((_ to_fp 11 53) x0_ack!5258))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5255)
                    ((_ to_fp 11 53) x1_ack!5254))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5256) ((_ to_fp 11 53) b_ack!5257))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5256) ((_ to_fp 11 53) x0_ack!5258))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5257) ((_ to_fp 11 53) x2_ack!5255))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5256) ((_ to_fp 11 53) b_ack!5257))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5256) ((_ to_fp 11 53) x0_ack!5258))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5256) ((_ to_fp 11 53) x1_ack!5254)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5254) ((_ to_fp 11 53) a_ack!5256))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5257) ((_ to_fp 11 53) x1_ack!5254))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5257) ((_ to_fp 11 53) x2_ack!5255)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5255)
                    ((_ to_fp 11 53) x1_ack!5254))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5256)
                       ((_ to_fp 11 53) x1_ack!5254))
               ((_ to_fp 11 53) x1_ack!5254))
       ((_ to_fp 11 53) a_ack!5256)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5256)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5256)
                       ((_ to_fp 11 53) x1_ack!5254)))
       ((_ to_fp 11 53) x1_ack!5254)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5256)
                                  ((_ to_fp 11 53) x1_ack!5254)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5256)
                                   ((_ to_fp 11 53) x1_ack!5254))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5256)
                                   ((_ to_fp 11 53) x1_ack!5254)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5256)
                           ((_ to_fp 11 53) x1_ack!5254)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5256)
                 ((_ to_fp 11 53) x1_ack!5254)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5256)
                                  ((_ to_fp 11 53) x1_ack!5254)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5256)
                                   ((_ to_fp 11 53) x1_ack!5254))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5256)
                                   ((_ to_fp 11 53) x1_ack!5254)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5256)
                           ((_ to_fp 11 53) x1_ack!5254)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5256)
                 ((_ to_fp 11 53) x1_ack!5254)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5257)
                                  ((_ to_fp 11 53) x1_ack!5254)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5257)
                                   ((_ to_fp 11 53) x1_ack!5254))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5257)
                                   ((_ to_fp 11 53) x1_ack!5254)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5257)
                           ((_ to_fp 11 53) x1_ack!5254)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5257)
                 ((_ to_fp 11 53) x1_ack!5254)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5257)
                                  ((_ to_fp 11 53) x1_ack!5254)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5257)
                                   ((_ to_fp 11 53) x1_ack!5254))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5257)
                                   ((_ to_fp 11 53) x1_ack!5254)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5257)
                           ((_ to_fp 11 53) x1_ack!5254)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5257)
                 ((_ to_fp 11 53) x1_ack!5254)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5256)
                           ((_ to_fp 11 53) x1_ack!5254))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5256)
                           ((_ to_fp 11 53) x1_ack!5254))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5257)
                           ((_ to_fp 11 53) x1_ack!5254))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5257)
                           ((_ to_fp 11 53) x1_ack!5254)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5256)
                           ((_ to_fp 11 53) x1_ack!5254))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5256)
                           ((_ to_fp 11 53) x1_ack!5254))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5257)
                           ((_ to_fp 11 53) x1_ack!5254))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5257)
                           ((_ to_fp 11 53) x1_ack!5254)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))

(check-sat)
(exit)
