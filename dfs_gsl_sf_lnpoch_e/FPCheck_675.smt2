(declare-fun a_ack!2317 () (_ BitVec 64))
(declare-fun b_ack!2316 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2317) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!2317)
                     ((_ to_fp 11 53) b_ack!2316))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2316) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2316))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!2317))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2317) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2317)
                       ((_ to_fp 11 53) b_ack!2316))
               ((_ to_fp 11 53) a_ack!2317))
       ((_ to_fp 11 53) b_ack!2316)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2317)
                       ((_ to_fp 11 53) b_ack!2316))
               ((_ to_fp 11 53) b_ack!2316))
       ((_ to_fp 11 53) a_ack!2317)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2317)
                    ((_ to_fp 11 53) b_ack!2316))
            ((_ to_fp 11 53) #x4065600000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!2317)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2317)
                       ((_ to_fp 11 53) #x4000000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f0559a074362da9)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2317)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf122c77e28883ce)
                         a!1)
                 ((_ to_fp 11 53) #xbf122c77e28883ce))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f0559a074362da9)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2317)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf122c77e28883ce)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbf122c77e28883ce))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2317)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2317)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2317)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf122c77e28883ce)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f0559a074362da9)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2317)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2317)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2317)
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f1bfa716513d256)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2317)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf21e5a3f738f3ca)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2317)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           a!4))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f1dde6d37545b3b)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2317)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           a!5))))
  (FPCHECK_FMUL_UNDERFLOW a!2 a!6))))))

(check-sat)
(exit)
