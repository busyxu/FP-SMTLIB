(declare-fun b_ack!2563 () (_ BitVec 64))
(declare-fun a_ack!2564 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2563) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2564) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!2563) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2564) ((_ to_fp 11 53) #x408f400000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2563) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2564) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2563) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2564) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!2563) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2564) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2563) ((_ to_fp 11 53) #x3ff8000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2564) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff8000000000000) ((_ to_fp 11 53) b_ack!2563))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2563) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  (CF_acos b_ack!2563)
                                  ((_ to_fp 11 53) a_ack!2564)))
                  ((_ to_fp 11 53) #x3e60000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos b_ack!2563)
                                   ((_ to_fp 11 53) a_ack!2564)))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos b_ack!2563)
                                   ((_ to_fp 11 53) a_ack!2564)))
                   ((_ to_fp 11 53) #x4020000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  (CF_acos b_ack!2563)
                                  ((_ to_fp 11 53) a_ack!2564)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  (CF_acos b_ack!2563)
                                  ((_ to_fp 11 53) a_ack!2564)))
                  ((_ to_fp 11 53) #x0020000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  (CF_acos b_ack!2563)
                                  ((_ to_fp 11 53) a_ack!2564)))
                  ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos b_ack!2563)
                                   ((_ to_fp 11 53) a_ack!2564)))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.leq (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos b_ack!2563)
                                   ((_ to_fp 11 53) a_ack!2564)))
                   ((_ to_fp 11 53) #x4020000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos b_ack!2563)
                                   ((_ to_fp 11 53) a_ack!2564))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbc814b37f4b51f71))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!4)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3cb42d169d7dfa04))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!5)
                           a!4)
                   ((_ to_fp 11 53) #x3cb7c76cf0790b3b))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!6)
                           a!5)
                   ((_ to_fp 11 53) #xbce0c0de350f7675))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!7)
                           a!6)
                   ((_ to_fp 11 53) #xbcf13428ff6ed89c))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!8)
                                   a!7)
                           ((_ to_fp 11 53) #x3d0770f4d8b1819e)))))
  (FPCHECK_FSUB_OVERFLOW a!9 a!8)))))))))))

(check-sat)
(exit)
