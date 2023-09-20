(declare-fun limit_ack!4866 () (_ BitVec 64))
(declare-fun epsabs_ack!4871 () (_ BitVec 64))
(declare-fun epsrel_ack!4865 () (_ BitVec 64))
(declare-fun a_ack!4872 () (_ BitVec 64))
(declare-fun x1_ack!4867 () (_ BitVec 64))
(declare-fun x2_ack!4868 () (_ BitVec 64))
(declare-fun x3_ack!4869 () (_ BitVec 64))
(declare-fun b_ack!4870 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4866)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4871) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4865)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4865)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4867) ((_ to_fp 11 53) a_ack!4872))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4868) ((_ to_fp 11 53) x1_ack!4867))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4869) ((_ to_fp 11 53) x2_ack!4868))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4870) ((_ to_fp 11 53) x3_ack!4869))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4872)
                                   ((_ to_fp 11 53) x1_ack!4867))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4867)
                                   ((_ to_fp 11 53) a_ack!4872)))
                   ((_ to_fp 11 53) #x3fefdc6c69272ae5))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4872)
                                   ((_ to_fp 11 53) x1_ack!4867)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
