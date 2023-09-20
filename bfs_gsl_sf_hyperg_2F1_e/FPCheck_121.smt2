(declare-fun a_ack!774 () (_ BitVec 64))
(declare-fun b_ack!771 () (_ BitVec 64))
(declare-fun c_ack!772 () (_ BitVec 64))
(declare-fun d_ack!773 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!774) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!771) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!772) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!773)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!773) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!773))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!772)
                       ((_ to_fp 11 53) b_ack!771)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!773))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd5555555555555)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) d_ack!773)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) d_ack!773)
                                   ((_ to_fp 11 53) d_ack!773))
                           ((_ to_fp 11 53) #x4014000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) d_ack!773)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) d_ack!773)
                                   a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!772)
                                   ((_ to_fp 11 53) a_ack!774))
                           ((_ to_fp 11 53) b_ack!771))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!773))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)))))
  (FPCHECK_FMUL_UNDERFLOW #x3cb0000000000000 (fp.abs a!3))))))

(check-sat)
(exit)
