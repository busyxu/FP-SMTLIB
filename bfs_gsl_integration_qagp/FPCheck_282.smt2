(declare-fun limit_ack!4234 () (_ BitVec 64))
(declare-fun epsabs_ack!4239 () (_ BitVec 64))
(declare-fun a_ack!4240 () (_ BitVec 64))
(declare-fun x1_ack!4235 () (_ BitVec 64))
(declare-fun x2_ack!4236 () (_ BitVec 64))
(declare-fun x3_ack!4237 () (_ BitVec 64))
(declare-fun b_ack!4238 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4234)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4239)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4235) ((_ to_fp 11 53) a_ack!4240))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4236) ((_ to_fp 11 53) x1_ack!4235))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4237) ((_ to_fp 11 53) x2_ack!4236))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4238) ((_ to_fp 11 53) x3_ack!4237))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4240)
                                   ((_ to_fp 11 53) x1_ack!4235))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!4235)
                  ((_ to_fp 11 53) a_ack!4240)))
  #x3fefdc6c69272ae5))

(check-sat)
(exit)
