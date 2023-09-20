(declare-fun limit_ack!4353 () (_ BitVec 64))
(declare-fun epsabs_ack!4358 () (_ BitVec 64))
(declare-fun a_ack!4359 () (_ BitVec 64))
(declare-fun x1_ack!4354 () (_ BitVec 64))
(declare-fun x2_ack!4355 () (_ BitVec 64))
(declare-fun x3_ack!4356 () (_ BitVec 64))
(declare-fun b_ack!4357 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4353)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4358)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4354) ((_ to_fp 11 53) a_ack!4359))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4355) ((_ to_fp 11 53) x1_ack!4354))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4356) ((_ to_fp 11 53) x2_ack!4355))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4357) ((_ to_fp 11 53) x3_ack!4356))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4359)
                                   ((_ to_fp 11 53) x1_ack!4354))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4354)
                                   ((_ to_fp 11 53) a_ack!4359)))
                   ((_ to_fp 11 53) #x3fefdc6c69272ae5))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4359)
                                   ((_ to_fp 11 53) x1_ack!4354)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
