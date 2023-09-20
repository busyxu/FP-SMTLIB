(declare-fun c_ack!352 () (_ BitVec 64))
(declare-fun a_ack!353 () (_ BitVec 32))
(declare-fun b_ack!351 () (_ BitVec 64))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!352) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!352) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (= #x00000000 a_ack!353))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!352) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!352) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!351) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!351)
                       ((_ to_fp 11 53) c_ack!352)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!351)
                                  ((_ to_fp 11 53) c_ack!352)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!351)
                                   ((_ to_fp 11 53) c_ack!352))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!351)
                                   ((_ to_fp 11 53) c_ack!352)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!351)
                           ((_ to_fp 11 53) c_ack!352)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!351)
                 ((_ to_fp 11 53) c_ack!352)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!351)
                                  ((_ to_fp 11 53) c_ack!352)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!351)
                                   ((_ to_fp 11 53) c_ack!352))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!351)
                                   ((_ to_fp 11 53) c_ack!352)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!351)
                           ((_ to_fp 11 53) c_ack!352)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!351)
                 ((_ to_fp 11 53) c_ack!352)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!351)
                                   ((_ to_fp 11 53) c_ack!352))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!351)
                                   ((_ to_fp 11 53) c_ack!352)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!351)
                                   ((_ to_fp 11 53) c_ack!352))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!351)
                                   ((_ to_fp 11 53) c_ack!352)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!351)
                           ((_ to_fp 11 53) c_ack!352))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!351)
                           ((_ to_fp 11 53) c_ack!352))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!351)
                                   ((_ to_fp 11 53) c_ack!352))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!351)
                                   ((_ to_fp 11 53) c_ack!352))
                           a!1)
                   a!1))
      (a!4 (fp.mul roundNearestTiesToEven
                   (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!351)
                                   ((_ to_fp 11 53) c_ack!352)))
                   a!3)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4059000000000000)))
                   (fp.abs a!4))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   a!5
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4059000000000000))))))
  (fp.eq a!6 (fp.abs a!4)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!351)
                           ((_ to_fp 11 53) c_ack!352))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!351)
                           ((_ to_fp 11 53) c_ack!352))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!351)
                                   ((_ to_fp 11 53) c_ack!352))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!351)
                                   ((_ to_fp 11 53) c_ack!352))
                           a!1)
                   a!1))
      (a!4 (fp.mul roundNearestTiesToEven
                   (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!351)
                                   ((_ to_fp 11 53) c_ack!352)))
                   a!3)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4059000000000000)))
                   (fp.abs a!4))))
  (fp.eq (fp.sub roundNearestTiesToEven a!5 (fp.abs a!4))
         (fp.abs (fp.div roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) #x4059000000000000))))))))
(assert (fp.gt ((_ to_fp 11 53) c_ack!352) ((_ to_fp 11 53) #x403205966f2b4f12)))

(check-sat)
(exit)
