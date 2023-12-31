(declare-fun x_ack!5226 () (_ BitVec 64))
(declare-fun nu1_ack!5224 () (_ BitVec 64))
(declare-fun nu2_ack!5225 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!5226) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!5226) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!5226) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!5226) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!5224) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!5225) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!5224) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!5225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!5224) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!5225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!5224) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!5225) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!5224) ((_ to_fp 11 53) nu2_ack!5225)))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!5224) ((_ to_fp 11 53) nu2_ack!5225))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!5225)
               ((_ to_fp 11 53) nu1_ack!5224))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp 11 53) nu1_ack!5224)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!5224) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!5224)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) nu1_ack!5224)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!5224)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!5224)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!5224)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!5224)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) nu1_ack!5224)
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!5224) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) nu1_ack!5224))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!5224)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))
                   ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) nu1_ack!5224)
                 ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!5224)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!5224)
                           ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) nu1_ack!5224)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!5224)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf5f094bd00128ce)
                         a!1)
                 ((_ to_fp 11 53) #xbf5f094bd00128ce))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) nu1_ack!5224)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!5224)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf5f094bd00128ce)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbf5f094bd00128ce))))

(check-sat)
(exit)
