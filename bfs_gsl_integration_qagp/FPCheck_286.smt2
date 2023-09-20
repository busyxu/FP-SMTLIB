(declare-fun limit_ack!4304 () (_ BitVec 64))
(declare-fun epsabs_ack!4309 () (_ BitVec 64))
(declare-fun a_ack!4310 () (_ BitVec 64))
(declare-fun x1_ack!4305 () (_ BitVec 64))
(declare-fun x2_ack!4306 () (_ BitVec 64))
(declare-fun x3_ack!4307 () (_ BitVec 64))
(declare-fun b_ack!4308 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4304)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4309)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4305) ((_ to_fp 11 53) a_ack!4310))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4306) ((_ to_fp 11 53) x1_ack!4305))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4307) ((_ to_fp 11 53) x2_ack!4306))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4308) ((_ to_fp 11 53) x3_ack!4307))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4310)
                                   ((_ to_fp 11 53) x1_ack!4305))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4305)
                                   ((_ to_fp 11 53) a_ack!4310)))
                   ((_ to_fp 11 53) #x3fefdc6c69272ae5))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4310)
                    ((_ to_fp 11 53) x1_ack!4305)))
    a!1)))

(check-sat)
(exit)
