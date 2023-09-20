(declare-fun x1_ack!7937 () (_ BitVec 64))
(declare-fun x0_ack!7941 () (_ BitVec 64))
(declare-fun x2_ack!7938 () (_ BitVec 64))
(declare-fun b_ack!7940 () (_ BitVec 64))
(declare-fun a_ack!7939 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7941) ((_ to_fp 11 53) x1_ack!7937)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7937) ((_ to_fp 11 53) x2_ack!7938)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7937)
                       ((_ to_fp 11 53) x0_ack!7941))
               ((_ to_fp 11 53) x0_ack!7941))
       ((_ to_fp 11 53) x1_ack!7937)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7937)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7937)
                       ((_ to_fp 11 53) x0_ack!7941)))
       ((_ to_fp 11 53) x0_ack!7941)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7938)
                       ((_ to_fp 11 53) x1_ack!7937))
               ((_ to_fp 11 53) x1_ack!7937))
       ((_ to_fp 11 53) x2_ack!7938)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7938)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7938)
                       ((_ to_fp 11 53) x1_ack!7937)))
       ((_ to_fp 11 53) x1_ack!7937)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7937)
                    ((_ to_fp 11 53) x0_ack!7941))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7938)
                    ((_ to_fp 11 53) x1_ack!7937))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7939) ((_ to_fp 11 53) b_ack!7940))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7939) ((_ to_fp 11 53) x0_ack!7941))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7940) ((_ to_fp 11 53) x2_ack!7938))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7939) ((_ to_fp 11 53) b_ack!7940))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7939) ((_ to_fp 11 53) x0_ack!7941))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!7939) ((_ to_fp 11 53) x1_ack!7937)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7937) ((_ to_fp 11 53) a_ack!7939))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7940) ((_ to_fp 11 53) x1_ack!7937))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7940) ((_ to_fp 11 53) x2_ack!7938)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7938)
                    ((_ to_fp 11 53) x1_ack!7937))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!7939)
                       ((_ to_fp 11 53) x1_ack!7937))
               ((_ to_fp 11 53) x1_ack!7937))
       ((_ to_fp 11 53) a_ack!7939)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!7939)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!7939)
                       ((_ to_fp 11 53) x1_ack!7937)))
       ((_ to_fp 11 53) x1_ack!7937)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!7939)
                                  ((_ to_fp 11 53) x1_ack!7937)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7939)
                                   ((_ to_fp 11 53) x1_ack!7937))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7939)
                                   ((_ to_fp 11 53) x1_ack!7937)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7939)
                           ((_ to_fp 11 53) x1_ack!7937)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!7939)
                 ((_ to_fp 11 53) x1_ack!7937)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!7939)
                                  ((_ to_fp 11 53) x1_ack!7937)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7939)
                                   ((_ to_fp 11 53) x1_ack!7937))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7939)
                                   ((_ to_fp 11 53) x1_ack!7937)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7939)
                           ((_ to_fp 11 53) x1_ack!7937)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!7939)
                 ((_ to_fp 11 53) x1_ack!7937)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!7940)
                                  ((_ to_fp 11 53) x1_ack!7937)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7940)
                                   ((_ to_fp 11 53) x1_ack!7937))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7940)
                                   ((_ to_fp 11 53) x1_ack!7937)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7940)
                           ((_ to_fp 11 53) x1_ack!7937)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!7940)
                 ((_ to_fp 11 53) x1_ack!7937)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!7940)
                                  ((_ to_fp 11 53) x1_ack!7937)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7940)
                                   ((_ to_fp 11 53) x1_ack!7937))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7940)
                                   ((_ to_fp 11 53) x1_ack!7937)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7940)
                           ((_ to_fp 11 53) x1_ack!7937)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!7940)
                 ((_ to_fp 11 53) x1_ack!7937)))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!7939)
                  ((_ to_fp 11 53) x1_ack!7937))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!7939)
                  ((_ to_fp 11 53) x1_ack!7937)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!7940)
                  ((_ to_fp 11 53) x1_ack!7937))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!7940)
                  ((_ to_fp 11 53) x1_ack!7937)))))

(check-sat)
(exit)
