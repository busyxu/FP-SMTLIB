(declare-fun limit_ack!4535 () (_ BitVec 64))
(declare-fun epsabs_ack!4540 () (_ BitVec 64))
(declare-fun a_ack!4541 () (_ BitVec 64))
(declare-fun x1_ack!4536 () (_ BitVec 64))
(declare-fun x2_ack!4537 () (_ BitVec 64))
(declare-fun x3_ack!4538 () (_ BitVec 64))
(declare-fun b_ack!4539 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4535)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4540)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4536) ((_ to_fp 11 53) a_ack!4541))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4537) ((_ to_fp 11 53) x1_ack!4536))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4538) ((_ to_fp 11 53) x2_ack!4537))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4539) ((_ to_fp 11 53) x3_ack!4538))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4541)
                                   ((_ to_fp 11 53) x1_ack!4536))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4536)
                                   ((_ to_fp 11 53) a_ack!4541)))
                   ((_ to_fp 11 53) #x3fefdc6c69272ae5))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4541)
                                   ((_ to_fp 11 53) x1_ack!4536)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
