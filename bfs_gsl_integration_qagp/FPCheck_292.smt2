(declare-fun limit_ack!4423 () (_ BitVec 64))
(declare-fun epsabs_ack!4428 () (_ BitVec 64))
(declare-fun a_ack!4429 () (_ BitVec 64))
(declare-fun x1_ack!4424 () (_ BitVec 64))
(declare-fun x2_ack!4425 () (_ BitVec 64))
(declare-fun x3_ack!4426 () (_ BitVec 64))
(declare-fun b_ack!4427 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4423)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4428)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4424) ((_ to_fp 11 53) a_ack!4429))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4425) ((_ to_fp 11 53) x1_ack!4424))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4426) ((_ to_fp 11 53) x2_ack!4425))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4427) ((_ to_fp 11 53) x3_ack!4426))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4429)
                                   ((_ to_fp 11 53) x1_ack!4424))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4424)
                                   ((_ to_fp 11 53) a_ack!4429)))
                   ((_ to_fp 11 53) #x3fefdc6c69272ae5))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4429)
                                   ((_ to_fp 11 53) x1_ack!4424)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
