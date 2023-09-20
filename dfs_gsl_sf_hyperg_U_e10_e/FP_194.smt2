(declare-fun c_ack!3920 () (_ BitVec 64))
(declare-fun b_ack!3919 () (_ BitVec 64))
(declare-fun a_ack!3921 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) c_ack!3920) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3919) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3921) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!3920) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) #x3ff0000000000000)
                        ((_ to_fp 11 53) a_ack!3921))
                ((_ to_fp 11 53) b_ack!3919))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!3921))
                   ((_ to_fp 11 53) b_ack!3919))))
  (not (fp.eq a!1 (CF_floor a!1)))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!3921))
               ((_ to_fp 11 53) b_ack!3919))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!3921))
                           ((_ to_fp 11 53) b_ack!3919))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!3921))
                           ((_ to_fp 11 53) b_ack!3919))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.geq (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!3921))
                           ((_ to_fp 11 53) b_ack!3919))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.sub roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) a_ack!3921))
                          ((_ to_fp 11 53) b_ack!3919))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!3921))
                           ((_ to_fp 11 53) b_ack!3919)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!3921))
               ((_ to_fp 11 53) b_ack!3919))
       ((_ to_fp 11 53) #xc3045f306dc9c883)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!3921))
                   ((_ to_fp 11 53) b_ack!3919))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x400921fb54442d18)
                         a!1)
                 ((_ to_fp 11 53) #x400921fb54442d18))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!3921))
                           ((_ to_fp 11 53) b_ack!3919)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!3921))
                   ((_ to_fp 11 53) b_ack!3919))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x400921fb54442d18)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x400921fb54442d18))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x400921fb54442d18)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!3921))
                           ((_ to_fp 11 53) b_ack!3919)))))
  (not (fp.eq (CF_sin a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x400921fb54442d18)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!3921))
                           ((_ to_fp 11 53) b_ack!3919)))))
  (fp.lt (fp.abs (CF_sin a!1)) ((_ to_fp 11 53) #x3fa8209f5b22baa6))))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) a_ack!3921))
                          ((_ to_fp 11 53) b_ack!3919))
                  ((_ to_fp 11 53) #xc1dfffffff800000))))
  (not a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!3921))
                   ((_ to_fp 11 53) b_ack!3919))))
(let ((a!2 (bvsub #x00000000
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) roundNearestTiesToEven a!2))
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!3921))
                           ((_ to_fp 11 53) b_ack!3919))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
  (= #xffffffff ((_ fp.to_sbv 32) roundTowardZero a!1))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!3921))
                   ((_ to_fp 11 53) b_ack!3919))))
(let ((a!2 (bvsub #x00000000
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) roundNearestTiesToEven a!2))
                   ((_ to_fp 11 53) #x3f254597bdbbce0a))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf351b2574f503d9)
                         a!3)
                 ((_ to_fp 11 53) #xbf351b2574f503d9))
         a!3)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!3921))
                   ((_ to_fp 11 53) b_ack!3919))))
(let ((a!2 (bvsub #x00000000
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) roundNearestTiesToEven a!2))
                   ((_ to_fp 11 53) #x3f254597bdbbce0a))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf351b2574f503d9)
                         a!3)
                 a!3)
         ((_ to_fp 11 53) #xbf351b2574f503d9))))))

(check-sat)
(exit)
