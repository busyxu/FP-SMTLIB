(declare-fun c_ack!823 () (_ BitVec 64))
(declare-fun a_ack!824 () (_ BitVec 32))
(declare-fun b_ack!822 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_sinh ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!823) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!824 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!823) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!824)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!823) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!823) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!824)))
(assert (not (= #x00000001 a_ack!824)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!823) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) b_ack!822))
               ((_ to_fp 11 53) c_ack!823))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (CF_log (CF_sinh (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) c_ack!823))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe62e42fefa39ef)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 a!1)))))
(assert (let ((a!1 (CF_log (CF_sinh (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) c_ack!823))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe62e42fefa39ef)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fe62e42fefa39ef)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!824)
                                   ((_ to_fp 11 53) #x3ff8000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!824)
                                   ((_ to_fp 11 53) #x3ff8000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (fp.geq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) roundNearestTiesToEven a_ack!824)
                ((_ to_fp 11 53) #x3ff8000000000000))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!824)
                                   ((_ to_fp 11 53) #x3ff8000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FDIV_UNDERFLOW #x40852429b6c30b05 a!1)))

(check-sat)
(exit)
