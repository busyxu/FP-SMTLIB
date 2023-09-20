(declare-fun c_ack!3003 () (_ BitVec 64))
(declare-fun a_ack!3004 () (_ BitVec 32))
(declare-fun b_ack!3002 () (_ BitVec 64))
(declare-fun CF_cosh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3003) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!3004 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!3003) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!3004)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3003) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!3003) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!3004)))
(assert (not (= #x00000001 a_ack!3004)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3003) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!3002))
                          ((_ to_fp 11 53) c_ack!3003))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul a_ack!3004 a_ack!3004))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!3002))
                           (fp.abs ((_ to_fp 11 53) b_ack!3002))))))
  (fp.lt (fp.div roundNearestTiesToEven
                 (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 (fp.mul roundNearestTiesToEven
                         (CF_cosh c_ack!3003)
                         (CF_cosh c_ack!3003)))
         ((_ to_fp 11 53) #x3effbf7e4e8cc9d1))))
(assert (fp.lt (CF_cosh c_ack!3003) ((_ to_fp 11 53) #x5fdfffffffffffff)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3002))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3002)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3002))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3002)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3004))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3002))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3002)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!2 a!3)
                         a!4)
                 a!4)
         (fp.mul roundNearestTiesToEven a!2 a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3004))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3002))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3002)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!2 a!3)
                 (fp.sub roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!2 a!3)
                         a!4))
         a!4))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3003)
                                   (CF_cosh c_ack!3003)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3004))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!3 a!4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!6)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!5))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!7 a!8)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!9 a!8)
                                    ((_ to_fp 11 53) #x0000000000000000))))))
(let ((a!11 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!10
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!11))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3003)
                                   (CF_cosh c_ack!3003)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3004))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!3 a!4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!6)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!5))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!7 a!8)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!9 a!8)
                                    ((_ to_fp 11 53) #x0000000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!10)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!10)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3003)
                                   (CF_cosh c_ack!3003)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3004))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!3 a!4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!6)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!5))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!7 a!8)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!9 a!8)
                                    ((_ to_fp 11 53) #x0000000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!10)
                 a!10)
         ((_ to_fp 11 53) #x3ff0000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3004))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!2 a!3)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002)))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!5))))
  (not (fp.eq (fp.abs (fp.div roundNearestTiesToEven a!6 a!7))
              ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3004))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3002))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3002))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3002))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3002))))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3003)
                                   (CF_cosh c_ack!3003)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!3)
                                   a!4)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!5)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!4)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            a!11)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!4)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!6
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.sub roundNearestTiesToEven a!13 a!15)))))
(let ((a!17 (fp.div roundNearestTiesToEven
                    a!16
                    (fp.div roundNearestTiesToEven
                            a!6
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7)))))
  (fp.eq a!17
         (fp.mul roundNearestTiesToEven
                 a!8
                 (fp.sub roundNearestTiesToEven a!13 a!15)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3003)
                                   (CF_cosh c_ack!3003)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3004))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!3 a!4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!6)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!5))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!7 a!8)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!9 a!8)
                                    ((_ to_fp 11 53) #x0000000000000000))))))
  (not (fp.eq (fp.abs a!10) ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3004))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3002))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3002))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3002))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3002))))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3003)
                                   (CF_cosh c_ack!3003)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!3)
                                   a!4)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!5)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!4)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            a!11)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!4)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!6
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.sub roundNearestTiesToEven a!13 a!15)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!16
                 (fp.mul roundNearestTiesToEven
                         a!8
                         (fp.sub roundNearestTiesToEven a!13 a!15)))
         (fp.div roundNearestTiesToEven
                 a!6
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4010000000000000)
                         a!7))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3004))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3002))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3002))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3002))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3002))))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3003)
                                   (CF_cosh c_ack!3003)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!3)
                                   a!4)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!5)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!4)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            a!11)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!4))))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!5
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!2 a!3)
                                    a!4)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!6
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.sub roundNearestTiesToEven a!13 a!15))))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!17
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven a!18 a!19)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!16 a!20)
                 a!20)
         a!16))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3004))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3002))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3002))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3002))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3002))))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3003)
                                   (CF_cosh c_ack!3003)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!3)
                                   a!4)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!5)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!4)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            a!11)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!4))))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!5
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!2 a!3)
                                    a!4)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!6
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.sub roundNearestTiesToEven a!13 a!15))))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!17
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven a!18 a!19)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!16
                 (fp.sub roundNearestTiesToEven a!16 a!20))
         a!20))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3004))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3002))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3002))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3002))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3002))))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3003)
                                   (CF_cosh c_ack!3003)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           a!2)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3002)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3002))
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!2)
                                   a!5))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!5)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            a!11)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3002))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!5)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven
            a!6
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4010000000000000)
                    a!7))
    (fp.mul roundNearestTiesToEven
            a!8
            (fp.sub roundNearestTiesToEven a!13 a!15)))))))))

(check-sat)
(exit)
