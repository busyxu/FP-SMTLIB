(declare-fun x_ack!7635 () (_ BitVec 64))
(declare-fun nu1_ack!7633 () (_ BitVec 64))
(declare-fun nu2_ack!7634 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!7635) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!7635) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!7635) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!7635) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!7633) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!7634) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!7633) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!7634) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!7633) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu2_ack!7634) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) nu2_ack!7634) (CF_floor nu2_ack!7634))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!7633) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!7634) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!7633)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) nu1_ack!7633)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!7633)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!7633)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!7633)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0163058fbcc17)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!7633)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf9a901651b2b525)
                         a!1)
                 ((_ to_fp 11 53) #xbf9a901651b2b525))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0163058fbcc17)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!7633)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf9a901651b2b525)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbf9a901651b2b525))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!7633)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf9a901651b2b525)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa0163058fbcc17)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!7633)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf9a901651b2b525)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa0163058fbcc17)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf9a901651b2b525)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa0163058fbcc17)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   a!1)))
  (fp.eq a!2
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) nu1_ack!7633)
                 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf9a901651b2b525)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa0163058fbcc17)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f93c8855b9a90b0)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x3f93c8855b9a90b0))
         (fp.mul roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) nu1_ack!7633)
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 a!1)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf9a901651b2b525)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa0163058fbcc17)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f93c8855b9a90b0)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1))))
  (fp.eq a!3 ((_ to_fp 11 53) #x3f93c8855b9a90b0))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf9a901651b2b525)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa0163058fbcc17)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f93c8855b9a90b0)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf886be8ce175c95)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!2))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!3
                 ((_ to_fp 11 53) #xbf886be8ce175c95))
         (fp.mul roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) nu1_ack!7633)
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 a!2))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf9a901651b2b525)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa0163058fbcc17)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f93c8855b9a90b0)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf886be8ce175c95)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!2))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!7633)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!2))))
  (fp.eq a!4 ((_ to_fp 11 53) #xbf886be8ce175c95)))))))

(check-sat)
(exit)
