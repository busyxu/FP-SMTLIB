(declare-fun x1_ack!7927 () (_ BitVec 64))
(declare-fun x0_ack!7931 () (_ BitVec 64))
(declare-fun x2_ack!7928 () (_ BitVec 64))
(declare-fun b_ack!7930 () (_ BitVec 64))
(declare-fun a_ack!7929 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7931) ((_ to_fp 11 53) x1_ack!7927)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7927) ((_ to_fp 11 53) x2_ack!7928)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7927)
                       ((_ to_fp 11 53) x0_ack!7931))
               ((_ to_fp 11 53) x0_ack!7931))
       ((_ to_fp 11 53) x1_ack!7927)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7927)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7927)
                       ((_ to_fp 11 53) x0_ack!7931)))
       ((_ to_fp 11 53) x0_ack!7931)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7928)
                       ((_ to_fp 11 53) x1_ack!7927))
               ((_ to_fp 11 53) x1_ack!7927))
       ((_ to_fp 11 53) x2_ack!7928)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7928)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7928)
                       ((_ to_fp 11 53) x1_ack!7927)))
       ((_ to_fp 11 53) x1_ack!7927)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7927)
                    ((_ to_fp 11 53) x0_ack!7931))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7928)
                    ((_ to_fp 11 53) x1_ack!7927))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7929) ((_ to_fp 11 53) b_ack!7930))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7929) ((_ to_fp 11 53) x0_ack!7931))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7930) ((_ to_fp 11 53) x2_ack!7928))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7929) ((_ to_fp 11 53) b_ack!7930))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7929) ((_ to_fp 11 53) x0_ack!7931))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!7929) ((_ to_fp 11 53) x1_ack!7927)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7927) ((_ to_fp 11 53) a_ack!7929))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7930) ((_ to_fp 11 53) x1_ack!7927))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7930) ((_ to_fp 11 53) x2_ack!7928)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7928)
                    ((_ to_fp 11 53) x1_ack!7927))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!7929)
                       ((_ to_fp 11 53) x1_ack!7927))
               ((_ to_fp 11 53) x1_ack!7927))
       ((_ to_fp 11 53) a_ack!7929)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!7929)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!7929)
                       ((_ to_fp 11 53) x1_ack!7927)))
       ((_ to_fp 11 53) x1_ack!7927)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!7929)
                                  ((_ to_fp 11 53) x1_ack!7927)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7929)
                                   ((_ to_fp 11 53) x1_ack!7927))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7929)
                                   ((_ to_fp 11 53) x1_ack!7927)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7929)
                           ((_ to_fp 11 53) x1_ack!7927)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!7929)
                 ((_ to_fp 11 53) x1_ack!7927)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!7929)
                                  ((_ to_fp 11 53) x1_ack!7927)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7929)
                                   ((_ to_fp 11 53) x1_ack!7927))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7929)
                                   ((_ to_fp 11 53) x1_ack!7927)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7929)
                           ((_ to_fp 11 53) x1_ack!7927)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!7929)
                 ((_ to_fp 11 53) x1_ack!7927)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!7930)
                                  ((_ to_fp 11 53) x1_ack!7927)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7930)
                                   ((_ to_fp 11 53) x1_ack!7927))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7930)
                                   ((_ to_fp 11 53) x1_ack!7927)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7930)
                           ((_ to_fp 11 53) x1_ack!7927)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!7930)
                 ((_ to_fp 11 53) x1_ack!7927)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!7930)
                                  ((_ to_fp 11 53) x1_ack!7927)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7930)
                                   ((_ to_fp 11 53) x1_ack!7927))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7930)
                                   ((_ to_fp 11 53) x1_ack!7927)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7930)
                           ((_ to_fp 11 53) x1_ack!7927)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!7930)
                 ((_ to_fp 11 53) x1_ack!7927)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!7929)
                  ((_ to_fp 11 53) x1_ack!7927))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!7929)
                  ((_ to_fp 11 53) x1_ack!7927)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!7930)
                  ((_ to_fp 11 53) x1_ack!7927))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!7930)
                  ((_ to_fp 11 53) x1_ack!7927)))))

(check-sat)
(exit)
