(declare-fun c_ack!941 () (_ BitVec 64))
(declare-fun b_ack!940 () (_ BitVec 32))
(declare-fun a_ack!942 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!941) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!941) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!941) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!940)))
(assert (not (= #xffffffff (bvsub a_ack!942 b_ack!940))))
(assert (not (= #xfffffffe (bvsub a_ack!942 b_ack!940))))
(assert (not (= (bvsub #x00000002 b_ack!940)
        (bvadd #x00000002 (bvsub a_ack!942 b_ack!940)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!942 b_ack!940))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!942 b_ack!940))))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!940))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fefae147ae147ae)
                          (fp.abs ((_ to_fp 11 53) c_ack!941))))))
  (not a!1)))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!942 b_ack!940))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x4014000000000000))))
(assert (bvslt (bvsub #x00000002 b_ack!940) #x00000005))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!941) ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!942 b_ack!940))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x4024000000000000))))
(assert (bvslt (bvsub #x00000002 b_ack!940) #x0000000a))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!941) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt (bvadd #x00000001 (bvsub a_ack!942 b_ack!940)) #x00000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!942 b_ack!940))))))
  (not (fp.geq ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvsub #x00000002 b_ack!940))
               (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!941))))))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvsub #x00000002 b_ack!940))
             ((_ to_fp 11 53) c_ack!941))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!942 b_ack!940)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!942 b_ack!940)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!940))
                           a!1)
                   ((_ to_fp 11 53) c_ack!941)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!940))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (not (fp.gt (fp.abs a!7) ((_ to_fp 11 53) #x5fefffffffffffff))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!942 b_ack!940)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!942 b_ack!940)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!940))
                           a!1)
                   ((_ to_fp 11 53) c_ack!941)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!940))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt (fp.abs a!7) ((_ to_fp 11 53) #x5fefffffffffffff))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!942 b_ack!940)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!942 b_ack!940)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!940))
                           a!1)
                   ((_ to_fp 11 53) c_ack!941)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!940))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!5)
                   (fp.mul roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!4 a!5)
                                    (fp.div roundNearestTiesToEven a!8 a!9))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!10 ((_ to_fp 11 53) #x3ce4000000000000)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!942 b_ack!940)))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!942 b_ack!940))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!940)))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!940))
                           a!4)
                   ((_ to_fp 11 53) c_ack!941))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW a!3 a!6)))))

(check-sat)
(exit)
