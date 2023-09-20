(declare-fun x_ack!6141 () (_ BitVec 64))
(declare-fun nu1_ack!6139 () (_ BitVec 64))
(declare-fun nu2_ack!6140 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!6141) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!6141) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!6141) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!6141) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!6139) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!6140) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!6139) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!6140) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!6139) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu2_ack!6140) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) nu2_ack!6140) (CF_floor nu2_ack!6140))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!6139) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!6140) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!6139)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) nu1_ack!6139)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!6139)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!6139)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!6139)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!6139)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) nu1_ack!6139)
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!6139) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) nu1_ack!6139))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!6139)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))
                   ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) nu1_ack!6139)
                 ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!6139)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!6139)
                           ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) nu1_ack!6139)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!6139)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf5f094bd00128ce)
                         a!1)
                 ((_ to_fp 11 53) #xbf5f094bd00128ce))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) nu1_ack!6139)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!6139)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf5f094bd00128ce)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbf5f094bd00128ce))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) nu1_ack!6139))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) nu1_ack!6139)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!6139)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!6139)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                   a!1))
                   ((_ to_fp 11 53) nu1_ack!6139))))
  (fp.eq a!2
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbf5f094bd00128ce)
                 a!1)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) nu1_ack!6139)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!6139)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))))
(let ((a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                  a!1))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) nu1_ack!6139)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!6139)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!6139)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                   a!1))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf5f094bd00128ce)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) nu1_ack!6139)))))

(check-sat)
(exit)
