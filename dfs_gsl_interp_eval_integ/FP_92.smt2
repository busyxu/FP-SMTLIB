(declare-fun x1_ack!5219 () (_ BitVec 64))
(declare-fun x0_ack!5223 () (_ BitVec 64))
(declare-fun x2_ack!5220 () (_ BitVec 64))
(declare-fun b_ack!5222 () (_ BitVec 64))
(declare-fun a_ack!5221 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5223) ((_ to_fp 11 53) x1_ack!5219)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5219) ((_ to_fp 11 53) x2_ack!5220)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5219)
                       ((_ to_fp 11 53) x0_ack!5223))
               ((_ to_fp 11 53) x0_ack!5223))
       ((_ to_fp 11 53) x1_ack!5219)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5219)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5219)
                       ((_ to_fp 11 53) x0_ack!5223)))
       ((_ to_fp 11 53) x0_ack!5223)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5220)
                       ((_ to_fp 11 53) x1_ack!5219))
               ((_ to_fp 11 53) x1_ack!5219))
       ((_ to_fp 11 53) x2_ack!5220)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5220)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5220)
                       ((_ to_fp 11 53) x1_ack!5219)))
       ((_ to_fp 11 53) x1_ack!5219)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5219)
                    ((_ to_fp 11 53) x0_ack!5223))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5220)
                    ((_ to_fp 11 53) x1_ack!5219))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5221) ((_ to_fp 11 53) b_ack!5222))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5221) ((_ to_fp 11 53) x0_ack!5223))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5222) ((_ to_fp 11 53) x2_ack!5220))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5221) ((_ to_fp 11 53) b_ack!5222))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5221) ((_ to_fp 11 53) x0_ack!5223))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5221) ((_ to_fp 11 53) x1_ack!5219)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5219) ((_ to_fp 11 53) a_ack!5221))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5222) ((_ to_fp 11 53) x1_ack!5219))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5222) ((_ to_fp 11 53) x2_ack!5220)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5220)
                    ((_ to_fp 11 53) x1_ack!5219))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5221)
                       ((_ to_fp 11 53) x1_ack!5219))
               ((_ to_fp 11 53) x1_ack!5219))
       ((_ to_fp 11 53) a_ack!5221)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5221)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5221)
                       ((_ to_fp 11 53) x1_ack!5219)))
       ((_ to_fp 11 53) x1_ack!5219)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5221)
                                  ((_ to_fp 11 53) x1_ack!5219)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5221)
                                   ((_ to_fp 11 53) x1_ack!5219))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5221)
                                   ((_ to_fp 11 53) x1_ack!5219)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5221)
                           ((_ to_fp 11 53) x1_ack!5219)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5221)
                 ((_ to_fp 11 53) x1_ack!5219)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5221)
                                  ((_ to_fp 11 53) x1_ack!5219)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5221)
                                   ((_ to_fp 11 53) x1_ack!5219))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5221)
                                   ((_ to_fp 11 53) x1_ack!5219)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5221)
                           ((_ to_fp 11 53) x1_ack!5219)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5221)
                 ((_ to_fp 11 53) x1_ack!5219)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5222)
                                  ((_ to_fp 11 53) x1_ack!5219)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5222)
                                   ((_ to_fp 11 53) x1_ack!5219))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5222)
                                   ((_ to_fp 11 53) x1_ack!5219)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5222)
                           ((_ to_fp 11 53) x1_ack!5219)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5222)
                 ((_ to_fp 11 53) x1_ack!5219)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5222)
                                  ((_ to_fp 11 53) x1_ack!5219)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5222)
                                   ((_ to_fp 11 53) x1_ack!5219))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5222)
                                   ((_ to_fp 11 53) x1_ack!5219)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5222)
                           ((_ to_fp 11 53) x1_ack!5219)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5222)
                 ((_ to_fp 11 53) x1_ack!5219)))))

(check-sat)
(exit)
