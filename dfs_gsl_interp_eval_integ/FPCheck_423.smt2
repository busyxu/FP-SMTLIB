(declare-fun x1_ack!5229 () (_ BitVec 64))
(declare-fun x0_ack!5233 () (_ BitVec 64))
(declare-fun x2_ack!5230 () (_ BitVec 64))
(declare-fun b_ack!5232 () (_ BitVec 64))
(declare-fun a_ack!5231 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5233) ((_ to_fp 11 53) x1_ack!5229)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5229) ((_ to_fp 11 53) x2_ack!5230)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5229)
                       ((_ to_fp 11 53) x0_ack!5233))
               ((_ to_fp 11 53) x0_ack!5233))
       ((_ to_fp 11 53) x1_ack!5229)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5229)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5229)
                       ((_ to_fp 11 53) x0_ack!5233)))
       ((_ to_fp 11 53) x0_ack!5233)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5230)
                       ((_ to_fp 11 53) x1_ack!5229))
               ((_ to_fp 11 53) x1_ack!5229))
       ((_ to_fp 11 53) x2_ack!5230)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5230)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5230)
                       ((_ to_fp 11 53) x1_ack!5229)))
       ((_ to_fp 11 53) x1_ack!5229)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5229)
                    ((_ to_fp 11 53) x0_ack!5233))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5230)
                    ((_ to_fp 11 53) x1_ack!5229))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5231) ((_ to_fp 11 53) b_ack!5232))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5231) ((_ to_fp 11 53) x0_ack!5233))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5232) ((_ to_fp 11 53) x2_ack!5230))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5231) ((_ to_fp 11 53) b_ack!5232))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5231) ((_ to_fp 11 53) x0_ack!5233))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5231) ((_ to_fp 11 53) x1_ack!5229)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5229) ((_ to_fp 11 53) a_ack!5231))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5232) ((_ to_fp 11 53) x1_ack!5229))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5232) ((_ to_fp 11 53) x2_ack!5230)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5230)
                    ((_ to_fp 11 53) x1_ack!5229))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5231)
                       ((_ to_fp 11 53) x1_ack!5229))
               ((_ to_fp 11 53) x1_ack!5229))
       ((_ to_fp 11 53) a_ack!5231)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5231)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5231)
                       ((_ to_fp 11 53) x1_ack!5229)))
       ((_ to_fp 11 53) x1_ack!5229)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5231)
                                  ((_ to_fp 11 53) x1_ack!5229)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5231)
                                   ((_ to_fp 11 53) x1_ack!5229))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5231)
                                   ((_ to_fp 11 53) x1_ack!5229)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5231)
                           ((_ to_fp 11 53) x1_ack!5229)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5231)
                 ((_ to_fp 11 53) x1_ack!5229)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5231)
                                  ((_ to_fp 11 53) x1_ack!5229)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5231)
                                   ((_ to_fp 11 53) x1_ack!5229))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5231)
                                   ((_ to_fp 11 53) x1_ack!5229)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5231)
                           ((_ to_fp 11 53) x1_ack!5229)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5231)
                 ((_ to_fp 11 53) x1_ack!5229)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5232)
                                  ((_ to_fp 11 53) x1_ack!5229)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5232)
                                   ((_ to_fp 11 53) x1_ack!5229))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5232)
                                   ((_ to_fp 11 53) x1_ack!5229)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5232)
                           ((_ to_fp 11 53) x1_ack!5229)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5232)
                 ((_ to_fp 11 53) x1_ack!5229)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5232)
                                  ((_ to_fp 11 53) x1_ack!5229)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5232)
                                   ((_ to_fp 11 53) x1_ack!5229))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5232)
                                   ((_ to_fp 11 53) x1_ack!5229)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5232)
                           ((_ to_fp 11 53) x1_ack!5229)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5232)
                 ((_ to_fp 11 53) x1_ack!5229)))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5231)
                  ((_ to_fp 11 53) x1_ack!5229))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5231)
                  ((_ to_fp 11 53) x1_ack!5229)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!5232)
                  ((_ to_fp 11 53) x1_ack!5229))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!5232)
                  ((_ to_fp 11 53) x1_ack!5229)))))

(check-sat)
(exit)
