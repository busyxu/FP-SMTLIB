(declare-fun limit_ack!4522 () (_ BitVec 64))
(declare-fun epsabs_ack!4527 () (_ BitVec 64))
(declare-fun epsrel_ack!4521 () (_ BitVec 64))
(declare-fun a_ack!4528 () (_ BitVec 64))
(declare-fun x1_ack!4523 () (_ BitVec 64))
(declare-fun x2_ack!4524 () (_ BitVec 64))
(declare-fun x3_ack!4525 () (_ BitVec 64))
(declare-fun b_ack!4526 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4522)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4527) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4521)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4521)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4523) ((_ to_fp 11 53) a_ack!4528))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4524) ((_ to_fp 11 53) x1_ack!4523))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4525) ((_ to_fp 11 53) x2_ack!4524))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4526) ((_ to_fp 11 53) x3_ack!4525))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4528)
                                   ((_ to_fp 11 53) x1_ack!4523))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!4523)
                  ((_ to_fp 11 53) a_ack!4528)))
  #x3fefdc6c69272ae5))

(check-sat)
(exit)
