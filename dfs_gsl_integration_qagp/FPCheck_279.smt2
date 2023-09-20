(declare-fun limit_ack!4778 () (_ BitVec 64))
(declare-fun epsabs_ack!4783 () (_ BitVec 64))
(declare-fun epsrel_ack!4777 () (_ BitVec 64))
(declare-fun a_ack!4784 () (_ BitVec 64))
(declare-fun x1_ack!4779 () (_ BitVec 64))
(declare-fun x2_ack!4780 () (_ BitVec 64))
(declare-fun x3_ack!4781 () (_ BitVec 64))
(declare-fun b_ack!4782 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!4778)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4783) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4777)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4777)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4779) ((_ to_fp 11 53) a_ack!4784))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4780) ((_ to_fp 11 53) x1_ack!4779))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4781) ((_ to_fp 11 53) x2_ack!4780))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4782) ((_ to_fp 11 53) x3_ack!4781))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4784)
                                   ((_ to_fp 11 53) x1_ack!4779))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4779)
                                   ((_ to_fp 11 53) a_ack!4784)))
                   ((_ to_fp 11 53) #x3fefdc6c69272ae5))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4784)
                                   ((_ to_fp 11 53) x1_ack!4779)))
                   a!1)))
  (FPCHECK_FDIV_UNDERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
