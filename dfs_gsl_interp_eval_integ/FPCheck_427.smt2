(declare-fun x1_ack!5274 () (_ BitVec 64))
(declare-fun x0_ack!5278 () (_ BitVec 64))
(declare-fun x2_ack!5275 () (_ BitVec 64))
(declare-fun b_ack!5277 () (_ BitVec 64))
(declare-fun a_ack!5276 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5278) ((_ to_fp 11 53) x1_ack!5274)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5274) ((_ to_fp 11 53) x2_ack!5275)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5274)
                       ((_ to_fp 11 53) x0_ack!5278))
               ((_ to_fp 11 53) x0_ack!5278))
       ((_ to_fp 11 53) x1_ack!5274)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5274)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5274)
                       ((_ to_fp 11 53) x0_ack!5278)))
       ((_ to_fp 11 53) x0_ack!5278)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5275)
                       ((_ to_fp 11 53) x1_ack!5274))
               ((_ to_fp 11 53) x1_ack!5274))
       ((_ to_fp 11 53) x2_ack!5275)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5275)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5275)
                       ((_ to_fp 11 53) x1_ack!5274)))
       ((_ to_fp 11 53) x1_ack!5274)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5274)
                    ((_ to_fp 11 53) x0_ack!5278))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5275)
                    ((_ to_fp 11 53) x1_ack!5274))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5276) ((_ to_fp 11 53) b_ack!5277))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5276) ((_ to_fp 11 53) x0_ack!5278))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5277) ((_ to_fp 11 53) x2_ack!5275))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5276) ((_ to_fp 11 53) b_ack!5277))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5276) ((_ to_fp 11 53) x0_ack!5278))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5276) ((_ to_fp 11 53) x1_ack!5274)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5274) ((_ to_fp 11 53) a_ack!5276))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5277) ((_ to_fp 11 53) x1_ack!5274))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5277) ((_ to_fp 11 53) x2_ack!5275)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5275)
                    ((_ to_fp 11 53) x1_ack!5274))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5276)
                       ((_ to_fp 11 53) x1_ack!5274))
               ((_ to_fp 11 53) x1_ack!5274))
       ((_ to_fp 11 53) a_ack!5276)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5276)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5276)
                       ((_ to_fp 11 53) x1_ack!5274)))
       ((_ to_fp 11 53) x1_ack!5274)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5276)
                                  ((_ to_fp 11 53) x1_ack!5274)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5276)
                                   ((_ to_fp 11 53) x1_ack!5274))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5276)
                                   ((_ to_fp 11 53) x1_ack!5274)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5276)
                           ((_ to_fp 11 53) x1_ack!5274)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5276)
                 ((_ to_fp 11 53) x1_ack!5274)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5276)
                                  ((_ to_fp 11 53) x1_ack!5274)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5276)
                                   ((_ to_fp 11 53) x1_ack!5274))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5276)
                                   ((_ to_fp 11 53) x1_ack!5274)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5276)
                           ((_ to_fp 11 53) x1_ack!5274)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5276)
                 ((_ to_fp 11 53) x1_ack!5274)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5277)
                                  ((_ to_fp 11 53) x1_ack!5274)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5277)
                                   ((_ to_fp 11 53) x1_ack!5274))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5277)
                                   ((_ to_fp 11 53) x1_ack!5274)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5277)
                           ((_ to_fp 11 53) x1_ack!5274)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5277)
                 ((_ to_fp 11 53) x1_ack!5274)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5277)
                                  ((_ to_fp 11 53) x1_ack!5274)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5277)
                                   ((_ to_fp 11 53) x1_ack!5274))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5277)
                                   ((_ to_fp 11 53) x1_ack!5274)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5277)
                           ((_ to_fp 11 53) x1_ack!5274)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5277)
                 ((_ to_fp 11 53) x1_ack!5274)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5276)
                           ((_ to_fp 11 53) x1_ack!5274))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5276)
                           ((_ to_fp 11 53) x1_ack!5274))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5277)
                           ((_ to_fp 11 53) x1_ack!5274))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5277)
                           ((_ to_fp 11 53) x1_ack!5274)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5276)
                           ((_ to_fp 11 53) x1_ack!5274))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5276)
                           ((_ to_fp 11 53) x1_ack!5274))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5277)
                           ((_ to_fp 11 53) x1_ack!5274))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5277)
                           ((_ to_fp 11 53) x1_ack!5274)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5276)
          ((_ to_fp 11 53) x1_ack!5274))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!5277)
          ((_ to_fp 11 53) x1_ack!5274))))

(check-sat)
(exit)
