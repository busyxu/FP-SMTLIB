(declare-fun c_ack!6574 () (_ BitVec 64))
(declare-fun a_ack!6575 () (_ BitVec 32))
(declare-fun b_ack!6573 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6574) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!6575 #xffffffff)))
(assert (not (= #xffffffff a_ack!6575)))
(assert (= #x00000000 a_ack!6575))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6574) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6574) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!6573) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!6574) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!6574) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6573) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!6574) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6573) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!6574) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6573) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!6574) ((_ to_fp 11 53) #x3ff8000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!6573) ((_ to_fp 11 53) #x4034000000000000)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!6574))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.geq a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!6574))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fd0000000000000)))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) c_ack!6574))
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!6574))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.geq (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  a!2)
          ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!6574))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!3)))
  (fp.gt (fp.abs a!4) ((_ to_fp 11 53) #x3cb0000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000))))
  (fp.geq (fp.mul roundNearestTiesToEven
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven a!1 a!2))
                  (fp.mul roundNearestTiesToEven a!3 a!2))
          ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4)))
(let ((a!6 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (fp.gt a!6 ((_ to_fp 11 53) #x3cb0000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
  (fp.geq a!5 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4)))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!6
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!5 a!2)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!5 a!2))
                           ((_ to_fp 11 53) #x0000000000000000))
                   a!7)))
  (fp.gt (fp.abs a!8) ((_ to_fp 11 53) #x3cb0000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
  (fp.geq (fp.mul roundNearestTiesToEven
                  a!5
                  (fp.mul roundNearestTiesToEven a!6 a!2))
          ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!5 a!2))
                   (fp.mul roundNearestTiesToEven a!6 a!2)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4)))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!8
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!5 a!2)))
                   a!7)))
(let ((a!10 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x0000000000000000))
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x0000000000000000))))))
  (fp.gt a!10 ((_ to_fp 11 53) #x3cb0000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
  (fp.geq (fp.mul roundNearestTiesToEven
                  (fp.mul roundNearestTiesToEven
                          a!5
                          (fp.mul roundNearestTiesToEven a!6 a!2))
                  (fp.mul roundNearestTiesToEven a!7 a!2))
          ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8)))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    (fp.mul roundNearestTiesToEven a!10 a!2)))
                    a!9)))
  (fp.eq a!11
         (fp.mul roundNearestTiesToEven
                 a!8
                 (fp.mul roundNearestTiesToEven a!10 a!2)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8)))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    (fp.mul roundNearestTiesToEven a!10 a!2)))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2)))))
  (fp.eq a!11 a!9)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!5 a!2))
                   (fp.mul roundNearestTiesToEven a!6 a!2)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4)))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.mul roundNearestTiesToEven a!5 a!2)))
                    a!7)))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    (fp.mul roundNearestTiesToEven a!8 a!2)))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    (fp.mul roundNearestTiesToEven a!8 a!2))
                            ((_ to_fp 11 53) #x0000000000000000))
                    a!11)))
  (fp.gt (fp.abs a!12) ((_ to_fp 11 53) #x3cb0000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!6574))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   (fp.mul roundNearestTiesToEven a!6 a!2))
                           (fp.mul roundNearestTiesToEven a!7 a!2))
                   (fp.mul roundNearestTiesToEven a!8 a!2))))
  (fp.geq a!9 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x403e400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4042000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!12 a!2))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!11 a!13)
                 a!11)
         a!13)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x403e400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4042000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!12 a!2))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!11 a!13)
                 a!13)
         a!11)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!5 a!2))
                   (fp.mul roundNearestTiesToEven a!6 a!2)))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!2)))
                    a!4)))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven a!8 a!2))
                    (fp.mul roundNearestTiesToEven a!9 a!2)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!11
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.mul roundNearestTiesToEven a!5 a!2)))
                    a!7)))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    (fp.mul roundNearestTiesToEven a!8 a!2)))
                    a!10)))
(let ((a!14 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x0000000000000000))
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x0000000000000000))))))
  (fp.gt a!14 ((_ to_fp 11 53) #x3cb0000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   (fp.mul roundNearestTiesToEven a!6 a!2))
                           (fp.mul roundNearestTiesToEven a!7 a!2))
                   (fp.mul roundNearestTiesToEven a!8 a!2))))
  (not (fp.eq (fp.abs a!9) ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   (fp.mul roundNearestTiesToEven a!6 a!2))
                           (fp.mul roundNearestTiesToEven a!7 a!2))
                   (fp.mul roundNearestTiesToEven a!8 a!2))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!9
                         (fp.mul roundNearestTiesToEven a!10 a!2))
                 a!9)
         (fp.mul roundNearestTiesToEven a!10 a!2))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4045200000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4048800000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!6574))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   (fp.mul roundNearestTiesToEven a!6 a!2))
                           (fp.mul roundNearestTiesToEven a!7 a!2))
                   (fp.mul roundNearestTiesToEven a!8 a!2))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!9
                         (fp.mul roundNearestTiesToEven a!10 a!2))
                 (fp.mul roundNearestTiesToEven a!10 a!2))
         a!9)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   (fp.mul roundNearestTiesToEven a!6 a!2))
                           (fp.mul roundNearestTiesToEven a!7 a!2))
                   (fp.mul roundNearestTiesToEven a!8 a!2))))
  (fp.geq (fp.mul roundNearestTiesToEven
                  a!9
                  (fp.mul roundNearestTiesToEven a!10 a!2))
          ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x403e400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4042000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!11 a!2))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    (fp.mul roundNearestTiesToEven a!10 a!2)))
                    a!12)))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    a!13)))
  (fp.eq a!15
         (fp.mul roundNearestTiesToEven
                 a!12
                 (fp.mul roundNearestTiesToEven a!14 a!2))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x403e400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4042000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!11 a!2))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    (fp.mul roundNearestTiesToEven a!10 a!2)))
                    a!12)))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven a!14 a!2)))))
  (fp.eq a!15 a!13))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!5 a!2))
                   (fp.mul roundNearestTiesToEven a!6 a!2)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!2)))
                    a!4)))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven a!8 a!2))
                    (fp.mul roundNearestTiesToEven a!9 a!2)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.mul roundNearestTiesToEven a!5 a!2)))
                    a!7)))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    (fp.mul roundNearestTiesToEven a!8 a!2)))
                    a!10)))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!14
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    (fp.mul roundNearestTiesToEven a!11 a!2)))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!16 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    (fp.mul roundNearestTiesToEven a!11 a!2))
                            ((_ to_fp 11 53) #x0000000000000000))
                    a!15)))
  (fp.gt (fp.abs a!16) ((_ to_fp 11 53) #x3cb0000000000000))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   (fp.mul roundNearestTiesToEven a!6 a!2))
                           (fp.mul roundNearestTiesToEven a!7 a!2))
                   (fp.mul roundNearestTiesToEven a!8 a!2))))
  (fp.geq (fp.mul roundNearestTiesToEven
                  (fp.mul roundNearestTiesToEven
                          a!9
                          (fp.mul roundNearestTiesToEven a!10 a!2))
                  (fp.mul roundNearestTiesToEven a!11 a!2))
          ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x403e400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4042000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!11 a!2))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    (fp.mul roundNearestTiesToEven a!10 a!2)))
                    a!12))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    (fp.mul roundNearestTiesToEven a!16 a!2))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven a!14 a!2)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!15 a!17)
                 a!15)
         a!17))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x403e400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4042000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!11 a!2))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    (fp.mul roundNearestTiesToEven a!10 a!2)))
                    a!12))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    (fp.mul roundNearestTiesToEven a!16 a!2))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven a!14 a!2)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!15 a!17)
                 a!17)
         a!15))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!5 a!2))
                   (fp.mul roundNearestTiesToEven a!6 a!2)))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!2)))
                    a!4)))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven a!8 a!2))
                    (fp.mul roundNearestTiesToEven a!9 a!2)))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!14
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.mul roundNearestTiesToEven a!5 a!2)))
                    a!7)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven a!11 a!2))
                    (fp.mul roundNearestTiesToEven a!12 a!2)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    (fp.mul roundNearestTiesToEven a!8 a!2)))
                    a!10)))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    (fp.mul roundNearestTiesToEven a!11 a!2)))
                    a!13)))
(let ((a!18 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x0000000000000000))
                            (fp.sub roundNearestTiesToEven
                                    a!17
                                    ((_ to_fp 11 53) #x0000000000000000))))))
  (fp.gt a!18 ((_ to_fp 11 53) #x3cb0000000000000))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   (fp.mul roundNearestTiesToEven a!6 a!2))
                           (fp.mul roundNearestTiesToEven a!7 a!2))
                   (fp.mul roundNearestTiesToEven a!8 a!2))))
(let ((a!12 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    (fp.mul roundNearestTiesToEven a!10 a!2))
                            (fp.mul roundNearestTiesToEven a!11 a!2)))))
  (not (fp.eq a!12 ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!13 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   (fp.mul roundNearestTiesToEven a!6 a!2))
                           (fp.mul roundNearestTiesToEven a!7 a!2))
                   (fp.mul roundNearestTiesToEven a!8 a!2))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!11 a!2))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!12
                         (fp.mul roundNearestTiesToEven a!13 a!2))
                 a!12)
         (fp.mul roundNearestTiesToEven a!13 a!2)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4052100000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4054400000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!6574))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!13 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   (fp.mul roundNearestTiesToEven a!6 a!2))
                           (fp.mul roundNearestTiesToEven a!7 a!2))
                   (fp.mul roundNearestTiesToEven a!8 a!2))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!11 a!2))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!12
                         (fp.mul roundNearestTiesToEven a!13 a!2))
                 (fp.mul roundNearestTiesToEven a!13 a!2))
         a!12))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   (fp.mul roundNearestTiesToEven a!6 a!2))
                           (fp.mul roundNearestTiesToEven a!7 a!2))
                   (fp.mul roundNearestTiesToEven a!8 a!2))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    (fp.mul roundNearestTiesToEven a!10 a!2))
                            (fp.mul roundNearestTiesToEven a!11 a!2))
                    (fp.mul roundNearestTiesToEven a!12 a!2))))
  (fp.geq a!13 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x403e400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4042000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!18 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!11 a!2))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    (fp.mul roundNearestTiesToEven a!10 a!2)))
                    a!12))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    (fp.mul roundNearestTiesToEven a!15 a!2))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    a!16)))
(let ((a!19 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!18 a!2)))
                    a!17)))
  (fp.eq a!19
         (fp.mul roundNearestTiesToEven
                 a!16
                 (fp.mul roundNearestTiesToEven a!18 a!2)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x403e400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4042000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!18 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!11 a!2))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    (fp.mul roundNearestTiesToEven a!10 a!2)))
                    a!12))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    (fp.mul roundNearestTiesToEven a!15 a!2))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    a!16)))
(let ((a!19 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!18 a!2)))
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven a!18 a!2)))))
  (fp.eq a!19 a!17)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x403e400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4042000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!18 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!11 a!2))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    (fp.mul roundNearestTiesToEven a!10 a!2)))
                    a!12))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    (fp.mul roundNearestTiesToEven a!15 a!2))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    a!16)))
(let ((a!19 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!18 a!2)))
                    ((_ to_fp 11 53) #x0000000000000000))))
  (not (fp.eq (fp.abs a!19) ((_ to_fp 11 53) #x0000000000000000)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!5 a!2))
                   (fp.mul roundNearestTiesToEven a!6 a!2)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!2)))
                    a!4)))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven a!8 a!2))
                    (fp.mul roundNearestTiesToEven a!9 a!2)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.mul roundNearestTiesToEven a!5 a!2)))
                    a!7)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven a!11 a!2))
                    (fp.mul roundNearestTiesToEven a!12 a!2)))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    (fp.mul roundNearestTiesToEven a!8 a!2)))
                    a!10)))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!18
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    (fp.mul roundNearestTiesToEven a!11 a!2)))
                    a!13)))
(let ((a!20 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!19
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    ((_ to_fp 11 53) #x0000000000000000))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      (fp.div roundNearestTiesToEven a!15 a!20)
                      a!20)
              a!15))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!5 a!2))
                   (fp.mul roundNearestTiesToEven a!6 a!2)))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!2)))
                    a!4)))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven a!8 a!2))
                    (fp.mul roundNearestTiesToEven a!9 a!2)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.mul roundNearestTiesToEven a!5 a!2)))
                    a!7)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven a!11 a!2))
                    (fp.mul roundNearestTiesToEven a!12 a!2)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    (fp.mul roundNearestTiesToEven a!8 a!2)))
                    a!10)))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    (fp.mul roundNearestTiesToEven a!11 a!2)))
                    a!13)))
(let ((a!19 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!18
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!20 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!14 a!2))
                            ((_ to_fp 11 53) #x0000000000000000))
                    a!19)))
  (not (fp.eq (fp.abs a!20) ((_ to_fp 11 53) #x0000000000000000))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!5 a!2))
                   (fp.mul roundNearestTiesToEven a!6 a!2)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!2)))
                    a!4)))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven a!8 a!2))
                    (fp.mul roundNearestTiesToEven a!9 a!2)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.mul roundNearestTiesToEven a!5 a!2)))
                    a!7)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven a!11 a!2))
                    (fp.mul roundNearestTiesToEven a!12 a!2)))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    (fp.mul roundNearestTiesToEven a!8 a!2)))
                    a!10)))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!18
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    (fp.mul roundNearestTiesToEven a!11 a!2)))
                    a!13)))
(let ((a!20 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!19
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    ((_ to_fp 11 53) #x0000000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!15
                 (fp.div roundNearestTiesToEven a!15 a!20))
         a!20)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!5 a!2))
                   (fp.mul roundNearestTiesToEven a!6 a!2)))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!2)))
                    a!4)))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven a!8 a!2))
                    (fp.mul roundNearestTiesToEven a!9 a!2)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.mul roundNearestTiesToEven a!5 a!2)))
                    a!7)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven a!11 a!2))
                    (fp.mul roundNearestTiesToEven a!12 a!2)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    (fp.mul roundNearestTiesToEven a!8 a!2)))
                    a!10)))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    (fp.mul roundNearestTiesToEven a!11 a!2)))
                    a!13)))
(let ((a!19 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!18
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!20 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!14 a!2))
                            ((_ to_fp 11 53) #x0000000000000000))
                    a!19)))
  (fp.gt (fp.abs a!20) ((_ to_fp 11 53) #x3cb0000000000000)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4056900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4059000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   (fp.mul roundNearestTiesToEven a!6 a!2))
                           (fp.mul roundNearestTiesToEven a!7 a!2))
                   (fp.mul roundNearestTiesToEven a!8 a!2))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    (fp.mul roundNearestTiesToEven a!10 a!2))
                            (fp.mul roundNearestTiesToEven a!11 a!2))
                    (fp.mul roundNearestTiesToEven a!12 a!2))))
  (fp.geq (fp.mul roundNearestTiesToEven
                  a!13
                  (fp.mul roundNearestTiesToEven a!14 a!2))
          ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x403e400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4042000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!18 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000)))
      (a!20 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4056900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4059000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!11 a!2))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    (fp.mul roundNearestTiesToEven a!10 a!2)))
                    a!12))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    (fp.mul roundNearestTiesToEven a!15 a!2))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    a!16))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven a!18 a!2))
                    (fp.mul roundNearestTiesToEven a!20 a!2))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    a!17
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven a!18 a!2)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!19 a!21)
                 a!19)
         a!21)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x403e400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4042000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!18 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000)))
      (a!20 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4056900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4059000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!11 a!2))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    (fp.mul roundNearestTiesToEven a!10 a!2)))
                    a!12))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    (fp.mul roundNearestTiesToEven a!15 a!2))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    a!16))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven a!18 a!2))
                    (fp.mul roundNearestTiesToEven a!20 a!2))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    a!17
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven a!18 a!2)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!19 a!21)
                 a!21)
         a!19)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4056900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4059000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!5 a!2))
                   (fp.mul roundNearestTiesToEven a!6 a!2)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!2)))
                    a!4)))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven a!8 a!2))
                    (fp.mul roundNearestTiesToEven a!9 a!2)))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.mul roundNearestTiesToEven a!5 a!2)))
                    a!7)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven a!11 a!2))
                    (fp.mul roundNearestTiesToEven a!12 a!2)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!18
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    (fp.mul roundNearestTiesToEven a!8 a!2)))
                    a!10)))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    (fp.mul roundNearestTiesToEven a!15 a!2)))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!19
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    (fp.mul roundNearestTiesToEven a!11 a!2)))
                    a!13)))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    a!16)))
(let ((a!22 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x0000000000000000))
                            (fp.sub roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x0000000000000000))))))
  (fp.gt a!22 ((_ to_fp 11 53) #x3cb0000000000000)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405b900000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x405e400000000000))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405b900000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x405e400000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!6574))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405b900000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x405e400000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4056900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4059000000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x405b900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x405e400000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   (fp.mul roundNearestTiesToEven a!6 a!2))
                           (fp.mul roundNearestTiesToEven a!7 a!2))
                   (fp.mul roundNearestTiesToEven a!8 a!2))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    (fp.mul roundNearestTiesToEven a!10 a!2))
                            (fp.mul roundNearestTiesToEven a!11 a!2))
                    (fp.mul roundNearestTiesToEven a!12 a!2))))
  (fp.geq (fp.mul roundNearestTiesToEven
                  (fp.mul roundNearestTiesToEven
                          a!13
                          (fp.mul roundNearestTiesToEven a!14 a!2))
                  (fp.mul roundNearestTiesToEven a!15 a!2))
          ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4056900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4059000000000000)))
      (a!17 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x405b900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x405e400000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!5 a!2))
                   (fp.mul roundNearestTiesToEven a!6 a!2)))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!2)))
                    a!4)))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven a!8 a!2))
                    (fp.mul roundNearestTiesToEven a!9 a!2)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!18
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.mul roundNearestTiesToEven a!5 a!2)))
                    a!7)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven a!11 a!2))
                    (fp.mul roundNearestTiesToEven a!12 a!2)))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!19
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    (fp.mul roundNearestTiesToEven a!8 a!2)))
                    a!10)))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    (fp.mul roundNearestTiesToEven a!15 a!2)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    (fp.mul roundNearestTiesToEven a!11 a!2)))
                    a!13)))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!21
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    a!16)))
(let ((a!23 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!22
                            (fp.mul roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!17 a!2)))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!24 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!17 a!2))
                            ((_ to_fp 11 53) #x0000000000000000))
                    a!23)))
  (fp.gt (fp.abs a!24) ((_ to_fp 11 53) #x3cb0000000000000))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4056900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4059000000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x405b900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x405e400000000000)))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4060880000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4062000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   (fp.mul roundNearestTiesToEven a!6 a!2))
                           (fp.mul roundNearestTiesToEven a!7 a!2))
                   (fp.mul roundNearestTiesToEven a!8 a!2))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    (fp.mul roundNearestTiesToEven a!10 a!2))
                            (fp.mul roundNearestTiesToEven a!11 a!2))
                    (fp.mul roundNearestTiesToEven a!12 a!2))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!14 a!2))
                            (fp.mul roundNearestTiesToEven a!15 a!2))
                    (fp.mul roundNearestTiesToEven a!16 a!2))))
  (fp.geq a!17 ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x403e400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4042000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!18 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000)))
      (a!19 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4056900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4059000000000000)))
      (a!22 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x405b900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x405e400000000000)))
      (a!24 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4060880000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4062000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!11 a!2))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    (fp.mul roundNearestTiesToEven a!10 a!2)))
                    a!12))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    (fp.mul roundNearestTiesToEven a!15 a!2))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    a!16))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven a!18 a!2))
                    (fp.mul roundNearestTiesToEven a!19 a!2))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!18 a!2)))
                    a!20))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven a!22 a!2))
                    (fp.mul roundNearestTiesToEven a!24 a!2))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    a!21
                    (fp.mul roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven a!22 a!2)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!23 a!25)
                 a!23)
         a!25))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x403e400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4042000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!18 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000)))
      (a!19 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4056900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4059000000000000)))
      (a!22 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x405b900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x405e400000000000)))
      (a!24 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4060880000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4062000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!11 a!2))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    (fp.mul roundNearestTiesToEven a!10 a!2)))
                    a!12))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    (fp.mul roundNearestTiesToEven a!15 a!2))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    a!16))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven a!18 a!2))
                    (fp.mul roundNearestTiesToEven a!19 a!2))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!18 a!2)))
                    a!20))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven a!22 a!2))
                    (fp.mul roundNearestTiesToEven a!24 a!2))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    a!21
                    (fp.mul roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven a!22 a!2)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!23 a!25)
                 a!25)
         a!23))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4056900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4059000000000000)))
      (a!17 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x405b900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x405e400000000000)))
      (a!18 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4060880000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4062000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!5 a!2))
                   (fp.mul roundNearestTiesToEven a!6 a!2)))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!2)))
                    a!4)))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven a!8 a!2))
                    (fp.mul roundNearestTiesToEven a!9 a!2)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.mul roundNearestTiesToEven a!5 a!2)))
                    a!7)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven a!11 a!2))
                    (fp.mul roundNearestTiesToEven a!12 a!2)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!21
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    (fp.mul roundNearestTiesToEven a!8 a!2)))
                    a!10)))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    (fp.mul roundNearestTiesToEven a!15 a!2)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!22
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    (fp.mul roundNearestTiesToEven a!11 a!2)))
                    a!13)))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven a!17 a!2))
                    (fp.mul roundNearestTiesToEven a!18 a!2)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!23
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    a!16)))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!24
                            (fp.mul roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!17 a!2)))
                    a!19)))
(let ((a!26 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!19
                                    ((_ to_fp 11 53) #x0000000000000000))
                            (fp.sub roundNearestTiesToEven
                                    a!25
                                    ((_ to_fp 11 53) #x0000000000000000))))))
  (fp.gt a!26 ((_ to_fp 11 53) #x3cb0000000000000))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4056900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4059000000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x405b900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x405e400000000000)))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4060880000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4062000000000000)))
      (a!18 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4063880000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4065200000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2))
                           (fp.mul roundNearestTiesToEven a!3 a!2))
                   (fp.mul roundNearestTiesToEven a!4 a!2))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   (fp.mul roundNearestTiesToEven a!6 a!2))
                           (fp.mul roundNearestTiesToEven a!7 a!2))
                   (fp.mul roundNearestTiesToEven a!8 a!2))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    (fp.mul roundNearestTiesToEven a!10 a!2))
                            (fp.mul roundNearestTiesToEven a!11 a!2))
                    (fp.mul roundNearestTiesToEven a!12 a!2))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!14 a!2))
                            (fp.mul roundNearestTiesToEven a!15 a!2))
                    (fp.mul roundNearestTiesToEven a!16 a!2))))
  (fp.geq (fp.mul roundNearestTiesToEven
                  a!17
                  (fp.mul roundNearestTiesToEven a!18 a!2))
          ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x403e400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4042000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!18 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000)))
      (a!19 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4056900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4059000000000000)))
      (a!22 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x405b900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x405e400000000000)))
      (a!23 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4060880000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4062000000000000)))
      (a!26 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4063880000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4065200000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!11 a!2))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    (fp.mul roundNearestTiesToEven a!10 a!2)))
                    a!12))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    (fp.mul roundNearestTiesToEven a!15 a!2))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    a!16))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven a!18 a!2))
                    (fp.mul roundNearestTiesToEven a!19 a!2))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!18 a!2)))
                    a!20))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven a!22 a!2))
                    (fp.mul roundNearestTiesToEven a!23 a!2))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!21
                            (fp.mul roundNearestTiesToEven
                                    a!20
                                    (fp.mul roundNearestTiesToEven a!22 a!2)))
                    a!24)))
(let ((a!27 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!25
                            (fp.mul roundNearestTiesToEven
                                    a!24
                                    (fp.mul roundNearestTiesToEven a!26 a!2)))
                    a!25)))
  (fp.eq a!27
         (fp.mul roundNearestTiesToEven
                 a!24
                 (fp.mul roundNearestTiesToEven a!26 a!2)))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4034400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4039000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x403e400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4042000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!18 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000)))
      (a!19 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4056900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4059000000000000)))
      (a!22 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x405b900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x405e400000000000)))
      (a!23 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4060880000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4062000000000000)))
      (a!26 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4063880000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4065200000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!2)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!6 a!2))
                   (fp.mul roundNearestTiesToEven a!7 a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!6 a!2)))
                   a!8))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!10 a!2))
                    (fp.mul roundNearestTiesToEven a!11 a!2))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    (fp.mul roundNearestTiesToEven a!10 a!2)))
                    a!12))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    (fp.mul roundNearestTiesToEven a!15 a!2))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    a!12
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    a!16))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven a!18 a!2))
                    (fp.mul roundNearestTiesToEven a!19 a!2))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!18 a!2)))
                    a!20))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven a!22 a!2))
                    (fp.mul roundNearestTiesToEven a!23 a!2))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!21
                            (fp.mul roundNearestTiesToEven
                                    a!20
                                    (fp.mul roundNearestTiesToEven a!22 a!2)))
                    a!24)))
(let ((a!27 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!25
                            (fp.mul roundNearestTiesToEven
                                    a!24
                                    (fp.mul roundNearestTiesToEven a!26 a!2)))
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.mul roundNearestTiesToEven a!26 a!2)))))
  (fp.eq a!27 a!25)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!6574))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4002000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4019000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4030000000000000)))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4039000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6573)
                                   ((_ to_fp 11 53) b_ack!6573)))
                   ((_ to_fp 11 53) #x4042000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4045200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4048800000000000)))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404c200000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4050000000000000)))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4052100000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4054400000000000)))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4056900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4059000000000000)))
      (a!17 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x405b900000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x405e400000000000)))
      (a!18 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4060880000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4062000000000000)))
      (a!20 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4063880000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!6573)
                                    ((_ to_fp 11 53) b_ack!6573)))
                    ((_ to_fp 11 53) #x4065200000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!2))
                   (fp.mul roundNearestTiesToEven a!3 a!2))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!5 a!2))
                   (fp.mul roundNearestTiesToEven a!6 a!2)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!1 a!2)))
                    a!4)))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven a!8 a!2))
                    (fp.mul roundNearestTiesToEven a!9 a!2)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!21
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    (fp.mul roundNearestTiesToEven a!5 a!2)))
                    a!7)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven a!11 a!2))
                    (fp.mul roundNearestTiesToEven a!12 a!2)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!22
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    (fp.mul roundNearestTiesToEven a!8 a!2)))
                    a!10)))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!14 a!2))
                    (fp.mul roundNearestTiesToEven a!15 a!2)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!23
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    (fp.mul roundNearestTiesToEven a!11 a!2)))
                    a!13)))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven a!17 a!2))
                    (fp.mul roundNearestTiesToEven a!18 a!2)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!24
                            (fp.mul roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!14 a!2)))
                    a!16)))
(let ((a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!25
                            (fp.mul roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!17 a!2)))
                    a!19)))
(let ((a!27 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!26
                            (fp.mul roundNearestTiesToEven
                                    a!19
                                    (fp.mul roundNearestTiesToEven a!20 a!2)))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!28 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!19
                                    (fp.mul roundNearestTiesToEven a!20 a!2))
                            ((_ to_fp 11 53) #x0000000000000000))
                    a!27)))
  (fp.gt (fp.abs a!28) ((_ to_fp 11 53) #x3cb0000000000000)))))))))))))

(check-sat)
(exit)
