(declare-fun x1_ack!5339 () (_ BitVec 64))
(declare-fun x0_ack!5346 () (_ BitVec 64))
(declare-fun x2_ack!5340 () (_ BitVec 64))
(declare-fun b_ack!5345 () (_ BitVec 64))
(declare-fun a_ack!5344 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5341 () (_ BitVec 64))
(declare-fun y1_ack!5342 () (_ BitVec 64))
(declare-fun y2_ack!5343 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5346) ((_ to_fp 11 53) x1_ack!5339)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5339) ((_ to_fp 11 53) x2_ack!5340)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5339)
                       ((_ to_fp 11 53) x0_ack!5346))
               ((_ to_fp 11 53) x0_ack!5346))
       ((_ to_fp 11 53) x1_ack!5339)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5339)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5339)
                       ((_ to_fp 11 53) x0_ack!5346)))
       ((_ to_fp 11 53) x0_ack!5346)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5340)
                       ((_ to_fp 11 53) x1_ack!5339))
               ((_ to_fp 11 53) x1_ack!5339))
       ((_ to_fp 11 53) x2_ack!5340)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5340)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5340)
                       ((_ to_fp 11 53) x1_ack!5339)))
       ((_ to_fp 11 53) x1_ack!5339)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5339)
                    ((_ to_fp 11 53) x0_ack!5346))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5340)
                    ((_ to_fp 11 53) x1_ack!5339))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5344) ((_ to_fp 11 53) b_ack!5345))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5344) ((_ to_fp 11 53) x0_ack!5346))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5345) ((_ to_fp 11 53) x2_ack!5340))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5344) ((_ to_fp 11 53) b_ack!5345))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5344) ((_ to_fp 11 53) x0_ack!5346))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5344) ((_ to_fp 11 53) x1_ack!5339)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5339) ((_ to_fp 11 53) a_ack!5344))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5345) ((_ to_fp 11 53) x1_ack!5339))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5345) ((_ to_fp 11 53) x2_ack!5340)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5340)
                    ((_ to_fp 11 53) x1_ack!5339))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5344)
                       ((_ to_fp 11 53) x1_ack!5339))
               ((_ to_fp 11 53) x1_ack!5339))
       ((_ to_fp 11 53) a_ack!5344)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5344)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5344)
                       ((_ to_fp 11 53) x1_ack!5339)))
       ((_ to_fp 11 53) x1_ack!5339)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5344)
                                  ((_ to_fp 11 53) x1_ack!5339)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5344)
                                   ((_ to_fp 11 53) x1_ack!5339))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5344)
                                   ((_ to_fp 11 53) x1_ack!5339)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5344)
                           ((_ to_fp 11 53) x1_ack!5339)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5344)
                 ((_ to_fp 11 53) x1_ack!5339)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5344)
                                  ((_ to_fp 11 53) x1_ack!5339)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5344)
                                   ((_ to_fp 11 53) x1_ack!5339))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5344)
                                   ((_ to_fp 11 53) x1_ack!5339)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5344)
                           ((_ to_fp 11 53) x1_ack!5339)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5344)
                 ((_ to_fp 11 53) x1_ack!5339)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5345)
                                  ((_ to_fp 11 53) x1_ack!5339)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5345)
                                   ((_ to_fp 11 53) x1_ack!5339))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5345)
                                   ((_ to_fp 11 53) x1_ack!5339)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5345)
                           ((_ to_fp 11 53) x1_ack!5339)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5345)
                 ((_ to_fp 11 53) x1_ack!5339)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5345)
                                  ((_ to_fp 11 53) x1_ack!5339)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5345)
                                   ((_ to_fp 11 53) x1_ack!5339))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5345)
                                   ((_ to_fp 11 53) x1_ack!5339)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5345)
                           ((_ to_fp 11 53) x1_ack!5339)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5345)
                 ((_ to_fp 11 53) x1_ack!5339)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5344)
                           ((_ to_fp 11 53) x1_ack!5339))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5344)
                           ((_ to_fp 11 53) x1_ack!5339))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5345)
                           ((_ to_fp 11 53) x1_ack!5339))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5345)
                           ((_ to_fp 11 53) x1_ack!5339)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5344)
                           ((_ to_fp 11 53) x1_ack!5339))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5344)
                           ((_ to_fp 11 53) x1_ack!5339))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5345)
                           ((_ to_fp 11 53) x1_ack!5339))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5345)
                           ((_ to_fp 11 53) x1_ack!5339)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5344)
                                   ((_ to_fp 11 53) x1_ack!5339))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5344)
                                   ((_ to_fp 11 53) x1_ack!5339)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5345)
                                   ((_ to_fp 11 53) x1_ack!5339))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5345)
                                   ((_ to_fp 11 53) x1_ack!5339)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5344)
                           ((_ to_fp 11 53) x1_ack!5339))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5345)
                           ((_ to_fp 11 53) x1_ack!5339)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5344)
                                   ((_ to_fp 11 53) x1_ack!5339))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5344)
                                   ((_ to_fp 11 53) x1_ack!5339)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5345)
                                   ((_ to_fp 11 53) x1_ack!5339))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5345)
                                   ((_ to_fp 11 53) x1_ack!5339)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5344)
                           ((_ to_fp 11 53) x1_ack!5339))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5345)
                           ((_ to_fp 11 53) x1_ack!5339)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5343)
                           ((_ to_fp 11 53) y1_ack!5342))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5340)
                                   ((_ to_fp 11 53) x1_ack!5339)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5342)
                           ((_ to_fp 11 53) y0_ack!5341))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5339)
                                   ((_ to_fp 11 53) x0_ack!5346)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5340)
                                   ((_ to_fp 11 53) x1_ack!5339))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5339)
                                   ((_ to_fp 11 53) x0_ack!5346)))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5344)
                                   ((_ to_fp 11 53) x1_ack!5339))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5344)
                                   ((_ to_fp 11 53) x1_ack!5339)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5345)
                                   ((_ to_fp 11 53) x1_ack!5339))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5345)
                                   ((_ to_fp 11 53) x1_ack!5339))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd5555555555555)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5344)
                                   ((_ to_fp 11 53) x1_ack!5339))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5345)
                                   ((_ to_fp 11 53) x1_ack!5339))))))
  (FPCHECK_FMUL_OVERFLOW a!4 a!6))))

(check-sat)
(exit)
