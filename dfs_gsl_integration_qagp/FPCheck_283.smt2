(declare-fun limit_ack!4842 () (_ BitVec 64))
(declare-fun epsabs_ack!4847 () (_ BitVec 64))
(declare-fun epsrel_ack!4841 () (_ BitVec 64))
(declare-fun a_ack!4848 () (_ BitVec 64))
(declare-fun x1_ack!4843 () (_ BitVec 64))
(declare-fun x2_ack!4844 () (_ BitVec 64))
(declare-fun x3_ack!4845 () (_ BitVec 64))
(declare-fun b_ack!4846 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4842)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4847) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4841)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4841)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4843) ((_ to_fp 11 53) a_ack!4848))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4844) ((_ to_fp 11 53) x1_ack!4843))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4845) ((_ to_fp 11 53) x2_ack!4844))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4846) ((_ to_fp 11 53) x3_ack!4845))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4848)
                                   ((_ to_fp 11 53) x1_ack!4843))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4843)
                                   ((_ to_fp 11 53) a_ack!4848)))
                   ((_ to_fp 11 53) #x3fefdc6c69272ae5))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4848)
                    ((_ to_fp 11 53) x1_ack!4843)))
    a!1)))

(check-sat)
(exit)
